// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import * as Popper from '@popperjs/core'
import * as bootstrap from "bootstrap"

import jquery from "jquery"
import toastr from "toastr"

toastr.options = {
  positionClass: "toast-bottom-left"
}

window.toastr = toastr
window.bootstrap = bootstrap
window.Popper = Popper
window.$ = jquery
window.jQuery = jquery


document.addEventListener('turbo:load', () => {
  var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
  var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
    return new bootstrap.Tooltip(tooltipTriggerEl)
  })

  var popoverTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="popover"]'))
  var popoverList = popoverTriggerList.map(function (popoverTriggerEl) {
    return new bootstrap.Popover(popoverTriggerEl)
  })

})

import "./controllers"
import "./channels"
