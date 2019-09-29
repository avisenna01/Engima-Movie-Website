let modal = document.getElementsByClassName("modal");
let buyTicketButton = document.getElementsByClassName("ticket-button");
let seatDetails = document.getElementsByClassName("seat-details");
let summary = document.getElementsByClassName("summary");
let seatSection = document.querySelectorAll(".seat-section li button");
let transButton = document.getElementById('trans-button');

function restructureSeatButton(seats) {
  let ol = document.getElementsByClassName("seat-section");

  seats.map(seat => {
    let button = document.createElement("button");
    let li = document.createElement("li");

    button.innerHTML = seat.chair_number;
    li.appendChild(button);
    ol.appendChild(li);
  });
}

function getAllSeats() {
  let xmlhttp = new XMLHttpRequest();
  xmlhttp.onreadystatechange = function () {
    if (this.readyState == 4 && this.status == 200) {
      let myObj = JSON.parse(this.responseText);
      [myObj] = myObj;
      if (myObj != null) {
        return myObj;
      }
    }
  };
  xmlhttp.open("GET", "/api/seat/getAllSeats", true);
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

transButton.addEventListener("click", redirect);

buyTicketButton[0].addEventListener("click", successMessage);

for (i = 0; i < seatSection.length; i++) {
  seatSection[i].addEventListener("click", checkout);
}
