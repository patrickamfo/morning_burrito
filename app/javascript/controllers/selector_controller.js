import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="selector"
export default class extends Controller {

  static targets = [ "navLink" ];

  selectLink() {
    console.log(this.navLinkTargets)
      for (let i = 0; i < this.navLinkTargets.length; i++) {
        this.navLinkTargets[i].addEventListener("click", )
          let currentLink = document.getElementsByClassName("active");
          currentLink[0].className = currentLink[0].className.replace(" active", "");
          navLink.className += " active";
    }
  }
}
