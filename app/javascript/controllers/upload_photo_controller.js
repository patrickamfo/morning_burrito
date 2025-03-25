import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="upload-photo"
export default class extends Controller {
  // Add circle div target
  static targets = ["photoPicker", "circle"]

  connect() {
  }

  upload() {
    const file = this.photoPickerTarget.files[0]

    if (file) {
      // Replace circle background with file image
      const url = URL.createObjectURL(file)

      this.circleTarget.style.backgroundImage = `url(${url})`
      this.circleTarget.style.backgroundSize = "cover"
      this.circleTarget.style.backgroundPosition = "center"
    }
  }
}
