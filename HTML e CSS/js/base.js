class MobileNavBar {
    constructor(mobileMenu, navList, navLinks) {
        this.mobileMenu = document.querySelector(mobileMenu);
        this.navList = document.querySelector(navList);
        this.navLinks = document.querySelectorAll(navLinks);
        this.activeClass = "active";

        this.handleClick = this.handleClick.bind(this);
    }
    animateLinks() {
        this.navLinks.forEach((link, index) => {
            link.style.animation
            ? (link.style.animation = "")
            : (link.style.animation = `navLinkFade 350ms ease forwards ${index / 7 + 0.3}s`);
        });
    }
    handleClick() {
        this.navList.classList.toggle(this.activeClass);
        let mobileMenu = document.getElementById("mobileMenu");
        if (mobileMenu.classList.contains("mostraMenu")) {
            mobileMenu.classList.remove("mostraMenu");
        } else {
            setTimeout(function(){
                mobileMenu.classList.add("mostraMenu");
            },800);
        }
            this.animateLinks();
    }
    addCLickEvent() {
        this.mobileMenu.addEventListener("click", this.handleClick);
    }
    init() {
        if (this.mobileMenu) {
            this.addCLickEvent();
        }
        return this;
    }
}

const mobileNavBar = new MobileNavBar(
    ".mobile-menu",
    ".nav",
    ".nav li"
);

mobileNavBar.init();

function mudaImg() {
    document.getElementById("img-logo").src = "../img/logo-orange.png";
}
function retornaImg() {
    document.getElementById("img-logo").src = "../img/logo.png";
}