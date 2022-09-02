import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {

static targets = ["icon", "list", "font"]

  connect() {
    console.log("connected")
  }

  handleClick(){
    this.listTarget.classList.toggle("nav-active")
  }

  changeIcon(){
    if (this.fontTarget.classList.contains('fa-bars')) {
      this.fontTarget.classList.remove('fa-bars');
      this.fontTarget.classList.add('fa-xmark');
    } else {
      this.fontTarget.classList.remove('fa-xmark');
      this.fontTarget.classList.add('fa-bars');
    }
  }
}
