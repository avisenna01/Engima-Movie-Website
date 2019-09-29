let submitButton = document.getElementById('submit-button');
let uname = document.getElementById('uname');
let pass = document.getElementById('psw');
submitButton.addEventListener("click", checklogin);

function setCookie(cname,cvalue,exdays) {
  var d = new Date();
  d.setTime(d.getTime() + (exdays*24*60*60*1000));
  var expires = "expires=" + d.toGMTString();
  document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
}

function getCookie(cname) {
  var name = cname + "=";
  var decodedCookie = decodeURIComponent(document.cookie);
  var ca = decodedCookie.split(';');
  for(var i = 0; i < ca.length; i++) {
    var c = ca[i];
    while (c.charAt(0) == ' ') {
      c = c.substring(1);
    }
    if (c.indexOf(name) == 0) {
      return c.substring(name.length, c.length);
    }
  }
  return "";
}


function checklogin() {
	var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        var myObj = JSON.parse(this.responseText);
        if (myObj.status == "404"){
            document.getElementById("invalid-login").style.display = "block";
        }
        else{
	        [myObj] = myObj;
	        setCookie("username", myObj.username, 1/(24*30));
	        setCookie("accesstoken", myObj.accesstoken, 1/(24*30));
	        location.replace("http://localhost:8080");
        }
      }
    };
    xmlhttp.open("POST", "/api/user/login", true);
	xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xmlhttp.send("uname=" + uname.value + "&psw="+pass.value);
}

uname.addEventListener("keyup", function(event) {
  // Number 13 is the "Enter" key on the keyboard
  if (event.keyCode === 13) {
    // Cancel the default action, if needed
    event.preventDefault();
    // Trigger the button element with a click
    submitButton.click();
  }
});
pass.addEventListener("keyup", function(event) {
  // Number 13 is the "Enter" key on the keyboard
  if (event.keyCode === 13) {
    // Cancel the default action, if needed
    event.preventDefault();
    // Trigger the button element with a click
    submitButton.click();
  }
});

function redirectCookie() {
    var username = getCookie("username");
    if (username != "") {
        location.replace("http://localhost:8080");
    }
};
