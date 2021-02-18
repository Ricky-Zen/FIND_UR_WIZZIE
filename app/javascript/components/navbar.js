let myNav = document.querySelector(".navbar");
window.onscroll = function () {
    "use strict";
    if (document.body.scrollTop >= 200 ) {
        myNav.classList.add(".navbar-wizzie");
        myNav.classList.remove(".transp-navbar");
    }
    else {
        myNav.classList.add(".transp-navbar");
        myNav.classList.remove(".navbar-wizzie");
    }
};

export
