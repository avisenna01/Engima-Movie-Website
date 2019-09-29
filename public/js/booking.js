let modal = document.getElementsByClassName("modal");
let buyTicketButton = document.getElementsByClassName("ticket-button");
let seatDetails = document.getElementsByClassName("seat-details");
let summary = document.getElementsByClassName("summary");
let seatSection = document.getElementsByClassName("seat-section");

console.log(seatSection[0].children[0].children[0]);

buyTicketButton[0].addEventListener("click", successMessage);

for (i = 0; i < seatSection[0].length; i++) {
  seatSection[0].children[i].children[0].addEventListener("click", checkout(i));
}

function checkout(i) {
  console.log(summary[0].children);
  summary[0].children[1].style.display = "none";
  seatDetails[0].style.display = "block";
  let numberAndPrice = document.getElementsByClassName("number-price");
  numberAndPrice[0].firstElementChild.textContent = `Seat #${i}`;
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
