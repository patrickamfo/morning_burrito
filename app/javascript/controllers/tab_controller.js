import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tab"
export default class extends Controller {

  static targets = [ "track", "unfinished" ]

  connect() {
    console.log(this.trackTarget)
    console.log(this.unfinishedTarget)
  }
}
