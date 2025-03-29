import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="preferences"
export default class extends Controller {
  static targets = [ "length", "category", "lengthTick", "categoryTick", "update", "tagline", "challengetag" ];


  lengthTargetConnected(lengthTarget) {
    lengthTarget.classList.add("visible");
  }

  showLengthButton() {
    this.lengthTickTarget.classList.add("visible", "fa-fade");
    this.taglineTarget.innerText = "Fit this challenge into your routine and set the right time for you!"
  }

  loadCategory() {
    const category = this.categoryTarget;
    category.classList.add("visible");
    category.scrollIntoView();
  }

  categoryIntoView() {
    this.categoryTarget.scrollIntoView();
    this.categoryTickTarget.classList.add("visible", "fa-fade");
  }

  toggleLengthText() {
  }

  loadUpdate() {
    let update = this.updateTarget;
    update.classList.add("visible");
    update.scrollIntoView();
  }
}
