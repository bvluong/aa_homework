document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items

  const addLi = (e) => {
    e.preventDefault();
    const input = e.target;
    const ul = document.getElementById("sf-places");
    const li = document.createElement("li");
    const favplace = document.querySelector(".favorite-input");

    li.textContent = favplace.value;
    favplace.value = "";
    ul.append(li);
  };

  document.querySelectorAll(".list-container form").forEach((el) => {
    el.addEventListener("submit", addLi);
  });


  // adding new photos

  // --- your code here!


  const togglePhoto = (e) => {
    e.preventDefault();
    const photoshow = document.querySelector(".photo-form-container");
    if (photoshow.className === "photo-form-container") {
      photoshow.className = "photo-form-container hidden";
    } else {
      photoshow.className = "photo-form-container";
    }

  };

  document.querySelector(".photo-show-button").addEventListener("click", togglePhoto);

  const handlePhotoSubmit = (e) => {
    e.preventDefault();

    const photoUrlInput = document.querySelector(".photo-url-input");
    const photoUrl = photoUrlInput.value;
    photoUrlInput.value = "";

    const newImg = document.createElement("img");
    newImg.src = photoUrl;

    const newPhotoLi = document.createElement("li");
    newPhotoLi.appendChild(newImg);

    const dogPhotosList = document.querySelector(".dog-photos");
    dogPhotosList.appendChild(newPhotoLi);
  };

  const photoSubmitButton = document.querySelector(".photo-url-submit");
  photoSubmitButton.addEventListener("click", handlePhotoSubmit);


});
