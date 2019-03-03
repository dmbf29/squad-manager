import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ['content']

  playerDragHandler(event) {
    // event.dataTransfer.dropEffect = "copy";
    // event.preventDefault();
    // console.log("I'm dragging!");
    // event.dataTransfer.setData("text/plain", event.target.id);
    // event.dropEffect = "copy";
    // event.target.style.opacity = .5;
    event.dataTransfer.setData("text/plain", event.target.id);
    event.dropEffect = "move";
  }

  playerDragOverHandler(event) {
    // event.preventDefault();
    // event.dataTransfer.dropEffect = 'copy';
    // console.log("I'm dragging over!");
    event.preventDefault();
    // Set the dropEffect to move
    event.dataTransfer.dropEffect = "move"
  }

  playerDropHandler(event) {
    // event.preventDefault();
    // console.log("I dropped!");
    // // console.log(event.target);
    // const data = event.dataTransfer.getData("text/plain");
    // // console.log(event.target.querySelector('form'));
    // console.log(data);
    event.preventDefault();
    console.log(event.currentTarget);
    // Get the id of the target and add the moved element to the target's DOM
    const data = event.dataTransfer.getData("text/plain");
    const player = document.getElementById(data);
    event.target.appendChild(player);
    const playerForm = player.querySelector('form'))
  }
}
