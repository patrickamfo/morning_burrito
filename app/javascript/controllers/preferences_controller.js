import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="preferences"
export default class extends Controller {
  static targets = [ "length", "category", "update", "tagline" ];

  // connect() {
  //   this.lengthTarget.classList.add('animation: fadeInOut 4s linear forwards;');
  // }

  loadCategory() {
    this.categoryTarget.classList.remove("d-none");
    this.categoryTarget.opacity = 0;
    this.categoryTarget.scrollIntoView();
    this.taglineTarget.innerText = "What's your vibe? Pick your challenge type!";
  }

  categoryIntoView() {
    this.categoryTarget.scrollIntoView();
  }

  toggleLengthText() {
    this.taglineTarget.innerText = "Fit this challenge into your routine and set the right time for you!"
  }

  loadUpdate() {
    this.updateTarget.classList.remove("d-none");
    this.updateTarget.scrollIntoView();
  }
}
