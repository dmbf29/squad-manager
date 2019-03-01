import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ['content']


  playerDrag() {
    console.log("I'm in the controller!");
  }
}
