import { Application } from "@hotwired/stimulus";
import { initFlatpickr } from "../plugins/flatpickr";

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

document.addEventListener("turbo:load", function(){
  initFlatpickr();
})



export { application }
