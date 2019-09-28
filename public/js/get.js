function getJSON() {
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        var myObj = JSON.parse(this.responseText);
        [myObj] = myObj;
        document.getElementById("username").innerHTML = myObj.username;
      }
    };
    xmlhttp.open("GET", "/api/user/getUserName?id=1", true);
    xmlhttp.send();
};