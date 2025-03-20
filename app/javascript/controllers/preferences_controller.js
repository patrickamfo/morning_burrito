import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="preferences"
export default class extends Controller {
  static targets = [ "category", "update", "tagline" ];

  loadCategory() {
    this.categoryTarget.classList.remove("d-none");
    this.categoryTarget.scrollIntoView();
    this.taglineTarget.innerText = "What's your vibe? Pick your challenge type!"
  }

  categoryIntoView() {
    this.categoryTarget.scrollIntoView();
  }

  loadUpdate() {
    this.updateTarget.classList.remove("d-none");
    this.updateTarget.scrollIntoView();
  }
}
