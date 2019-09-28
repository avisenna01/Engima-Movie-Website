function getJSON() {
    var userid = getCookie("userid");
    if (userid != "") {
        location.replace("http://localhost:8080");
    } else {
        userid = prompt("Please enter your id:", "");
        if (userid != "" && userid != null) {
            setCookie("username", userid);
        }
    }
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var myObj = JSON.parse(this.responseText);
            [myObj] = myObj;
            document.getElementById("username").innerHTML = myObj.username;
        }
    };
    xmlhttp.open("GET", "/api/user/getUserName?id=" + userid, true);
    xmlhttp.send();
};