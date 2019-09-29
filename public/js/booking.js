let modal = document.getElementsByClassName("modal");
let buyTicketButton = document.getElementsByClassName("ticket-button");
let seatDetails = document.getElementsByClassName("seat-details");
let summary = document.getElementsByClassName("summary");
let transButton = document.getElementById('trans-button');

function restructureSeatButton(seats) {
  let ol = document.getElementsByClassName("seat-section")[0];

  seats.map(seat => {
    let button = document.createElement("button");
    let li = document.createElement("li");

    button.innerHTML = seat.chair_number;
    button.id = seat.chair_number;
    if (seat.taken == 1) {
      button.setAttribute("disabled", true);
    }

    li.appendChild(button);
    ol.appendChild(li);
  });
}

function getParameterByName(name, url) {
  if (!url) url = window.location.href;
  name = name.replace(/[\[\]]/g, '\\$&');
  var regex = new RegExp('[?&]' + name + '(=([^&#]*)|&|#|$)'),
    results = regex.exec(url);
  if (!results) return null;
  if (!results[2]) return '';
  return decodeURIComponent(results[2].replace(/\+/g, ' '));
}

function getAllSeats() {
  let scheduleId = getParameterByName("id_schedule");
  let xmlhttp = new XMLHttpRequest();
  xmlhttp.onreadystatechange = function () {
    if (this.readyState == 4 && this.status == 200) {
      let myObj = JSON.parse(this.responseText);
      if (myObj != null) {
        restructureSeatButton(myObj);
        let seatSection = document.querySelectorAll(".seat-section li button");
        for (i = 0; i < seatSection.length; i++) {
          seatSection[i].addEventListener("click", checkout);
        }
      }
    }
  };
  xmlhttp.open("GET", "/api/seat/getAllSeats?id_schedule=" + scheduleId, true);
  xmlhttp.send();
}

function checkout() {
  summary[0].children[1].style.display = "none";
  seatDetails[0].style.display = "block";
  let numberAndPrice = document.getElementsByClassName("number-price");
  numberAndPrice[0].firstElementChild.textContent = "Seat #" + this.id;
}

function successMessage() {
  modal[0].style.display = "block";
}

function redirect() {
  location.replace("http://localhost:8080/transaction");
}

function takeSeat() {
  var xmlhttp = new XMLHttpRequest();
  let scheduleId = getParameterByName("id_schedule");
  let chairnumber = parseInt(document.getElementById("seatnumber").innerHTML.slice(6), 10);
  console.log(scheduleId);
  console.log(chairnumber);
  xmlhttp.onreadystatechange = function () {
    if (this.readyState == 4 && this.status == 200) {
      console.log(this.responseText);
    }
  };
  xmlhttp.open("POST", "/api/seat/takeSeat", true);
  xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
  xmlhttp.send("id_schedule=" + scheduleId + "&chair_number=" + chairnumber);
}

console.log(buyTicketButton);

getAllSeats();
transButton.addEventListener("click", redirect);
buyTicketButton[0].addEventListener("click", function () {
  takeSeat();
  successMessage();
});
