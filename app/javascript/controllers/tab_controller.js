import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tab"
export default class extends Controller {

  static targets = [ "track", "unfinished", "trackText", "unfinishedText" ]

  connect() {
    this.unfinishedTextTarget.style.opacity = "0.5";
  }

  loadLearningTrack() {
    this.trackTarget.classList.remove("d-none");
    this.trackTextTarget.style.opacity = "1";
    this.unfinishedTarget.classList.add("d-none");
    this.unfinishedTextTarget.style.opacity = "0.5";
  }

  loadUnfinished() {
    this.unfinishedTarget.classList.remove("d-none");
    this.unfinishedTextTarget.style.opacity = "1";
    this.trackTarget.classList.add("d-none");
    this.trackTextTarget.style.opacity = "0.5";
  }
}
