import { Controller } from "@hotwired/stimulus";

export default class extends Controller {

  connect(){
    console.log("heyyyy")
    document.getElementById("audio").addEventListener("click", event => {
      event.preventDefault()
      console.log("click")
      const audio = document.querySelector("audio");
      audio.volume = 0.2;
      audio.play();
    });
  }
}
