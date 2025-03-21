import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="preferences"
export default class extends Controller {
  static targets = [ "length", "category", "lengthTick", "categoryTick", "update", "tagline" ];

  showLengthButton() {
    this.lengthTickTarget.classList.add("visible");
    this.taglineTarget.innerText = "Fit this challenge into your routine and set the right time for you!"
  }

  loadCategory() {
    const category = this.categoryTarget;
    category.classList.add("visible");
    category.scrollIntoView();
    this.taglineTarget.innerText = "What's your vibe? Pick your challenge type!";
  }

  categoryIntoView() {
    this.categoryTarget.scrollIntoView();
    this.categoryTickTarget.classList.add("visible");
  }

  toggleLengthText() {
  }

  loadUpdate() {
    let update = this.updateTarget;
    update.classList.add("visible");
    update.scrollIntoView();
  }
}
