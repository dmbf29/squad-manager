import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ['content']

  playerDragHandler(event) {
    // console.log("I'm dragging!");
    // event.preventDefault();
    event.dataTransfer.setData("text/plain", event.target.id);
    event.dropEffect = "move";
  }

  playerDragExitHandler(event) {
    event.currentTarget.classList.remove('gray-background');
    event.currentTarget.style = "transform:scale(1)";
  }

  playerDragOverHandler(event) {
    // console.log("I'm dragging over!");
    event.currentTarget.classList.add('gray-background');
    event.currentTarget.style = "transform:scale(1.05)";
    event.preventDefault();
    // Set the dropEffect to move
    event.dataTransfer.dropEffect = "move"
  }

  playerDropHandler(event) {
    // console.log("I dropped!");
    event.preventDefault();
    // Get the id of the target and add the moved element to the target's DOM
    const data = event.dataTransfer.getData("text/plain");
    const player = document.getElementById(data);
    console.log(player);
    const playerForm = player.querySelector('form');
    event.currentTarget.appendChild(player);
    // TODO: Replace ID in form with new squad_place
    playerForm.querySelector('#player_squad_place_id').value = event.currentTarget.dataset.id;
    playerForm.submit(function(event) { return false });
  }
}
