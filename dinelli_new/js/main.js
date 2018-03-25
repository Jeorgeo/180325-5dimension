var toggleBtn = document.getElementById('js-toggle');
var menuNav = document.getElementById('masthead');
var toggleArrow = document.querySelector('.header-menu-toggle');

toggleBtn.addEventListener('click', moveMenu);

function moveMenu(){
  if(menuNav.classList.contains('nav-show')) {
      toggleArrow.classList.remove('btn-arrow-top');
      toggleArrow.classList.remove('btn-arrow-bottom');
      menuNav.classList.remove('nav-show');
     } else {
      toggleArrow.classList.add('btn-arrow-top');
      toggleArrow.classList.add('btn-arrow-bottom');
      menuNav.classList.add('nav-show');
      }
};

// popup windows

var popup = document.querySelector(".popup-question");
var popupSr = document.querySelector(".popup-question-thanks-r");
var popupR = document.querySelector(".reviews-popup-question");
var close = document.querySelectorAll(".popup-question-close");
var winPopup = document.querySelector(".wrap");

function showPopup() {
  popup.classList.add("modal-content-show");
  winPopup.classList.add("modal-content-show");
};

function showPopupR() {
  popupR.classList.add("modal-content-show");
  winPopup.classList.add("modal-content-show");
};

function removePopup() {
  popup.classList.add("modal-content-hide");
  popupR.classList.add("modal-content-hide");
  winPopup.classList.add("modal-content-hide");
  popupSr.classList.remove("modal-content-show");
  setTimeout(function() {
    popup.classList.remove("modal-content-show");
    popupR.classList.remove("modal-content-show");
    winPopup.classList.remove("modal-content-show");
    popup.classList.remove("modal-content-hide");
    popupR.classList.remove("modal-content-hide");
    winPopup.classList.remove("modal-content-hide");
  }, 600);

};

function showThankR() {
  popupR.classList.remove("modal-content-show");
  window.open("https://vk.com/davnelli");
  popupSr.classList.add("modal-content-show");
  setTimeout(function() {
    popupSr.classList.add("modal-content-hide");
    winPopup.classList.add("modal-content-hide");
  }, 59000);
  setTimeout(function() {
    popupS.classList.remove("modal-content-show");
    winPopup.classList.remove("modal-content-show");
    popupS.classList.remove("modal-content-hide");
    winPopup.classList.remove("modal-content-hide");
  }, 60000);
};

function showThank() {
  winPopup.classList.add("modal-content-show");
  popup.classList.remove("modal-content-show");
  window.open("https://vk.com/davnelli");
  popupS.classList.add("modal-content-show");
  setTimeout(function() {
    popupS.classList.add("modal-content-hide");
    winPopup.classList.add("modal-content-hide");
  }, 59000);
  setTimeout(function() {
    popupS.classList.remove("modal-content-show");
    winPopup.classList.remove("modal-content-show");
    popupS.classList.remove("modal-content-hide");
    winPopup.classList.remove("modal-content-hide");
  }, 60000);
};

for (var i = 0; i < close.length; i++) {

  close[i].addEventListener("click", function(event) {

    event.preventDefault();

    removePopup();

  });
}

window.addEventListener("keydown", function(event) {

  if (event.keyCode === 27) {

    if (popup.classList.contains("modal-content-show")) {

      removePopup();

    }

  }

});

winPopup.addEventListener("click", function(event) {

  if (winPopup.classList.contains("modal-content-show")) {

    removePopup();

  }

});

$(document).ready(function() {

	//E-mail Ajax Send
	$(".reviews-form").submit(function() { //Change
		var th = $(this).serialize();
		$.ajax({
			type: "POST",
			url: "https://dinelli.ru/mail.php", //Change
			data: th,
		}).done(function() {
			showThankR();
		});
		return false;
	});

  $(".order-form").submit(function() { //Change
		var th = $(this).serialize();
		$.ajax({
			type: "POST",
			url: "https://dinelli.ru/mail.php", //Change
			data: th,
		}).done(function() {
			document.location.href = "https://dinelli.ru/spasibo/";
		});
		return false;
	});

});
