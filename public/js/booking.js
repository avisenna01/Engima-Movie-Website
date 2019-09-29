let modal = document.getElementsByClassName("modal");
let buyTicketButton = document.getElementsByClassName("ticket-button");
let seatDetails = document.getElementsByClassName("seat-details");
let summary = document.getElementsByClassName("summary");
let seatSection = document.querySelectorAll(".seat-section li button");
let transButton = document.getElementById('trans-button');

transButton.addEventListener("click", redirect);

function redirect() {
  location.replace("http://localhost:8080/transaction");
}

console.log(seatSection);



buyTicketButton[0].addEventListener("click", successMessage);

for (i = 0; i < seatSection.length; i++) {
  seatSection[i].addEventListener("click", checkout);
}

function checkout() {
  console.log(summary[0].children);
  summary[0].children[1].style.display = "none";
  seatDetails[0].style.display = "block";
  let numberAndPrice = document.getElementsByClassName("number-price");
  numberAndPrice[0].firstElementChild.textContent = "Seat #" + this.id;
}

function createNewElement(element, text) {
  let newElement = document.createElement(element);
  newElement.textContent = text;
  return newElement;
}

function appendArrayOfChild(element, arrayChild) {
  arrayChild.map(child => {
    element.appendChild(child);
  });
}

function successMessage() {
  modal[0].style.display = "block";
}
