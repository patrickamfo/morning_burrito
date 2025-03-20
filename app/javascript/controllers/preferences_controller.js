import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="preferences"
export default class extends Controller {
  static targets = [ "category", "update" ];

  loadCategory() {
    this.categoryTarget.classList.remove("d-none");
  }

  loadUpdate() {
    this.updateTarget.classList.remove("d-none");
  }
}
