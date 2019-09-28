function checkuname() {
    var xmlhttp = new XMLHttpRequest();
    name = document.getElementById("inputname").value;
    xmlhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        var myObj = JSON.parse(this.responseText);
        [myObj] = myObj;
        if (myObj != null){
            document.getElementById("alert-uname").style.display = "block";
        }
      }
    };
    xmlhttp.open("GET", "/api/user/checkuname?username="+name, true);
    xmlhttp.send();
};