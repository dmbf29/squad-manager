console.log("loaded")

window.playerDragStartHandler = (event) => {
 console.log("dragStart");
 // Add the target element's id to the data transfer object
 event.dataTransfer.setData("text/plain", event.target.id);
 console.log(event.dataTransfer);
}

console.log('after define')
