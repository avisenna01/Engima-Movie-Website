let unameinput = document.getElementById("uname-input");
let emailinput = document.getElementById("email-input");
let phoneinput = document.getElementById("phone-input");
let pcon = document.getElementById("pswcon");

unameinput.addEventListener("blur", checkuname);
emailinput.addEventListener("blur", checkemail);
phoneinput.addEventListener("blur", checkphone);
pcon.addEventListener("blur", checkpass);

function checkuname() {
    var xmlhttp = new XMLHttpRequest();
    data = unameinput.value;
    xmlhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        var myObj = JSON.parse(this.responseText);
        [myObj] = myObj;
        if (myObj != null){
            document.getElementById("error-text-username").style.display = "block";
            document.getElementById("username-existed").innerHTML = data;
        }
        else{
            document.getElementById("error-text-username").style.display = "none";
        }
      }
    };
    xmlhttp.open("GET", "/api/user/checkuname?uname="+data, true);
    xmlhttp.send();
};
function checkemail() {
    var xmlhttp = new XMLHttpRequest();
    data = emailinput.value;
    xmlhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        var myObj = JSON.parse(this.responseText);
        [myObj] = myObj;
        if (myObj != null){
            document.getElementById("error-text-email").style.display = "block";
            document.getElementById("email-existed").innerHTML = data;
        }
        else{
            document.getElementById("error-text-email").style.display = "none";
        }
      }
    };
    xmlhttp.open("GET", "/api/user/checkemail?email="+data, true);
    xmlhttp.send();
};
function checkphone() {
    var xmlhttp = new XMLHttpRequest();
    data = phoneinput.value;
    xmlhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        var myObj = JSON.parse(this.responseText);
        [myObj] = myObj;
        if (myObj != null){
            document.getElementById("error-text-phone").style.display = "block";
            document.getElementById("phone-existed").innerHTML = data;
        }
        else{
            document.getElementById("error-text-phone").style.display = "none";
        }
      }
    };
    xmlhttp.open("GET", "/api/user/checkphone?phone="+data, true);
    xmlhttp.send();
};

function checkpass() {
	pass = document.getElementById("psw").value;
	passcon = document.getElementById("pswcon").value;
	if(pass != passcon){
		document.getElementById("password-miss").style.display = "block";
	}
	else{
		document.getElementById("password-miss").style.display = "none";
	}
}