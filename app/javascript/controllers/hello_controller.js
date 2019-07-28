// Visit The Stimulus Handbook for more details 
// https://stimulusjs.org/handbook/introduction
// 
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>

import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "output", "context"]

  connect() {
    this.outputTarget.textContent = 'Hello, Stimulus!'
  }

  showcontextmenu(event) {
    event.preventDefault()
    this.contextTarget.hidden = false
    console.log('Context menu göründü. Asın bayrakları!')
  }
}
