<?php



function get_vk_browser($url='',$uagent=''){
	if(empty($uagent)){$uagent = "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322)";}
	$ch = curl_init( $url );
	curl_setopt($ch, CURLOPT_URL, $url);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
	curl_setopt($ch, CURLOPT_HEADER, 0);
	//curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
	curl_setopt($ch, CURLOPT_ENCODING, "");
	curl_setopt($ch, CURLOPT_USERAGENT, $uagent);  // useragent
	//if(!empty($cookie)){curl_setopt($ch, CURLOPT_COOKIE,$cookie);}
	curl_setopt($ch, CURLOPT_TIMEOUT, 30);
	curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
	curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
	/*if(!empty($postdata)){
		curl_setopt($ch, CURLOPT_POST, 1);
		curl_setopt($ch, CURLOPT_POSTFIELDS, $postdata);
	}*/
	//curl_setopt($ch, CURLOPT_COOKIEJAR, "cook.txt");
	//curl_setopt($ch, CURLOPT_COOKIEFILE,"cook.txt");
	//curl_setopt($ch, CURLOPT_SSLVERSION, 3);
	/* $content = curl_exec( $ch );
	$err     = curl_errno( $ch );
	$errmsg  = curl_error( $ch );
	$header  = curl_getinfo( $ch );
	$header['errno']   = $err;
	$header['errmsg']  = $errmsg;
	$header['content'] = $content;*/
	$err = curl_errno( $ch );
	if(!empty($err)){
		$html='';
	}
	$html = curl_exec($ch);
	curl_close( $ch );
	return $html;//array("code"=>$code,"response"=>$html,"url"=>$url);
}



function get_vk_topik(){
	$token = '4168e3bffbe12217557fce3b15fc8e1829b04ae9f3210abc7446c34b00ceae65fbbccc5b840e34370f500';
	$board_getComments = 'https://api.vk.com/method/board.getComments?group_id=55517976&topic_id=28357561&count=100&sort=desc&access_token='.$token.'&v=5.68';
	$board_getComments_result = get_vk_browser($board_getComments);


	$res = '';

	if(!empty($board_getComments_result)){
		$board_getComments_result_arr = json_decode($board_getComments_result);

		//var_dump($board_getComments_result_arr);

		if(!empty($board_getComments_result_arr->response->items)){

			//Получаем список айдишек
			$from_ids = '';
			foreach ($board_getComments_result_arr->response->items as $item) {
				$from_ids .= $item->from_id.',';
			}


			if(!empty($from_ids)){
				$from_ids = trim($from_ids,',');
				/*photo_id,verified,sex,bdate,city,country,home_town,has_photo,photo_50,photo_100,photo_200_orig,photo_200,photo_400_orig,photo_max,photo_max_orig,online,domain,has_mobile,contacts,site, education, universities, schools, status, last_seen, followers_count, common_count, occupation, nickname, relatives, relation, personal, connections, exports, wall_comments, activities, interests, music, movies, tv, books, games, about, quotes, can_post, can_see_all_posts, can_see_audio, can_write_private_message, can_send_friend_request, is_favorite, is_hidden_from_feed, timezone, screen_name, maiden_name, crop_photo, is_friend, friend_status, career, military, blacklisted, blacklisted_by_me*/
				$users_get = 'https://api.vk.com/method/users.get?user_ids='.$from_ids.'&fields=photo_id,photo_50,photo_100,photo_200_orig,photo_200,photo_400_orig,photo_max,photo_max_orig,sex,city,country,home_town,nickname,screen_name,maiden_name&access_token='.$token.'&v=5.68';
				$users_get_result = get_vk_browser($users_get);

				//echo $users_get_result;

				if(!empty($users_get_result)){
					$users_get_result_arr = json_decode($users_get_result);
					//var_dump($users_get_result_arr);
					$users = array();
					foreach ($users_get_result_arr->response as $user) {
						$users[$user->id]['id']=$user->id;
						$users[$user->id]['screen_name']=$user->screen_name;
						$users[$user->id]['first_name']=$user->first_name;
						$users[$user->id]['last_name']=$user->last_name;
						$users[$user->id]['photo_50']=$user->photo_50;
						$users[$user->id]['city']=$user->city;
						$users[$user->id]['country']=$user->country;
					}
				}

				//var_dump($users);
				//echo $from_ids;
			}

			foreach ($board_getComments_result_arr->response->items as $item) {
				//var_dump($item);
				//die();

				$id = '';
				$from_id = '';
				$date = '';
				$text = '';
				$attachments = '';

				if(!empty($item->id)){
					$id = $item->id;
				}


				if(!empty($item->from_id)){
					$from_id = $item->from_id;
				}

				$ava = '';

				if(!empty($users[$from_id]['photo_50'])){
					$ava = $users[$from_id]['photo_50'];
					$ava = '<img src="'.$ava.'" alt="" />';
				}


				$user = '';
				$first_name = '';
				$last_name = '';
				$screen_name = '';

				if(!empty($users[$from_id]['first_name'])){
					$first_name = $users[$from_id]['first_name'];
				}
				if(!empty($users[$from_id]['last_name'])){
					$last_name = $users[$from_id]['last_name'];
				}
				if(!empty($users[$from_id]['screen_name'])){
					$screen_name = $users[$from_id]['screen_name'];
				} else {
					$screen_name = 'id'.$from_id;
				}


				if(!empty($item->date)){
					$date = $item->date;

				}
				if(!empty($item->text)){
					$text = $item->text;
				}

				//var_dump($item->attachments);

				if(!empty($item->attachments)){
					/*foreach ($item->attachments as $attachment) {
						$attachments .= $attachment->photo_604;
					}*/
					for ($i=0; $i < count($item->attachments); $i++) {
						$attachment = $item->attachments[$i]->photo->photo_604;
						$attachment = '<img src="'.$attachment.'" alt="" />';

						$attachments .= $attachment;
					}
				}

				$user = '<a href="https://vk.com/'.$screen_name.'" target="_blank" rel="nofollow">'.$first_name.' '.$last_name.'</a>';

				$res .='

					<div class="review_vk row clearfix" id="review_vk_'.$id.'">
						<div class="review_vk_ava cols col-1"><a href="https://vk.com/'.$screen_name.'" target="_blank" rel="nofollow">'.$ava.'</a></div>
						<div class="review_vk_content cols col-9">
							<div class="review_vk_user">'.$user.'</div><div class="review_vk_date"></div>
							<div style="clear:both;"></div>
							<div class="review_vk_text">'.$text.'</div>
							<div class="review_vk_attachments">'.$attachments.'</div>
						</div>
					</div>
				';

				/*id
				from_id
				1373037870
				text
				attachments*/
			}

		}

	}

	return $res;

}


function the_vk_topik(){
	$transient_name = 'vk_topik';
	//delete_transient( $transient_name );
	$transient_time = 24*60*60;
	if ( false === ( $transient_data = get_transient( $transient_name ) ) ) {
		$transient_data = get_vk_topik();
		set_transient( $transient_name, $transient_data, $transient_time );
	}
	echo $transient_data;
}

?>
