<?
// ----------------------------конфигурация-------------------------- //

header("Content-Type: text/html; charset=utf-8");

$project_name = trim($_POST["project_name"]);
$adminemail  = trim($_POST["admin_email"]);
$form_subject = trim($_POST["form_subject"]);  // e-mail админа


$date=date("d.m.y"); // число.месяц.год

$time=date("H:i"); // часы:минуты:секунды

//---------------------------------------------------------------------- //


// Принимаем данные с формы

$name=$_POST['phone'];

$msg=$_POST['message'];

$msg="

<p>Проект: $project_name</p>

<p>тема: $form_subject</p>

<p>Телефон: $name</p>

<p>сообщение: $msg</p>

";


 // Отправляем письмо админу

mail("$adminemail", "$date $time Заказ звонка на $name", "$msg");


// Сохраняем в базу данных

$f = fopen("message.txt", "a+");

fwrite($f," \n $date $time Сообщение от $name");

fwrite($f,"\n $msg ");

fwrite($f,"\n ---------------");

fclose($f);


exit;


?>
