m = require "mithril"

let Card = (data) => {
  this.id       = m.prop(data.id)
  this.school   = m.prop(data.school)
  this.progress = m.prop(data.progress)
}