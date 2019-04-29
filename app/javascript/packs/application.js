const checkboxes = document.querySelectorAll('.form-check')
if (checkboxes) {
  document.querySelectorAll('.form-check').forEach((check) => { check.remove() })

  document.querySelector('.check_boxes legend').insertAdjacentHTML("afterend", '<div id="checkbox-list" style="display:flex;justify-content:space-around;"></div')
  const box = document.querySelector('#checkbox-list')
  checkboxes.forEach((checkbox) => {
    // console.
    box.appendChild(checkbox)
    // box.insertAdjacentHTML("afterbegin", checkbox)
  })
  // checkboxes[0].insertAdjacentHTML("beforebegin", '<div style="display:flex">')
  // checkboxes[0].insertAdjacentHTML("beforebegin", '<div style="display:flex">')
}

