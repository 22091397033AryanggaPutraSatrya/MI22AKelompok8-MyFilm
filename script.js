window.addEventListener("scroll", function () {
        let backToTop = document.getElementById("back-to-top");
        let containernavbar = document.querySelector(".containernavbar");
        if (window.scrollY > containernavbar.clientHeight) {
            backToTop.style.display = "inline";
        } else {
            backToTop.style.display = "none";
        }
});


let openButtons = document.querySelectorAll(".openVideo");
let videoPopup = document.getElementById("videoPopup");
let videoIframe = document.getElementById("videoIframe");
let closeVideo = document.getElementById("closeVideo");

openButtons.forEach(function(button) {
        button.addEventListener("click", function() {
        let youtubeURL = this.getAttribute("data-video");
        videoIframe.src = youtubeURL;
        videoPopup.style.display = "block";
        });
});

closeVideo.addEventListener("click", function() {
        videoIframe.src = "about:blank";
        videoPopup.style.display = "none";
});

videoPopup.addEventListener("click", function(event) {
        if (event.target === this) {
        videoIframe.src = "about:blank";
        videoPopup.style.display = "none";
        }
});