import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="img-preview"
export default class extends Controller {
  static targets = ["input", "preview"]

  connect() {
  }

  preview() {
    const file = this.inputTarget.files[0]
    const reader = new FileReader();

    reader.onload = function () {

      this.previewTarget.src = reader.result;
    }.bind(this)

    reader.readAsDataURL(this.inputTarget.files[0]);
  }
}
