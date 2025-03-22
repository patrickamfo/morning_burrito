import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="writing-text"
export default class extends Controller {
  static targets = ["square", "writingText"]

  connect() {
    console.log("hello world")
  }

  text() {
    console.log('upload clicked')
    console.log(this.writingTextTarget)
  }
}
