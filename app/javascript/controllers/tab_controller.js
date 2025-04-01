import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tab"
export default class extends Controller {

  static targets = [ "track", "unfinished" ]

  loadLearningTrack() {
    this.trackTarget.classList.remove("d-none");
    this.unfinishedTarget.classList.add("d-none");
  }

  loadUnfinished() {
    this.unfinishedTarget.classList.remove("d-none");
    this.trackTarget.classList.add("d-none");
  }
}
