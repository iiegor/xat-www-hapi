var ko = require('./vendor/knockout');

function ViewManager(doc) {
  this._document = doc || window.document;
  this._views = {};
}

ViewManager.prototype.register = function (id, instance) {
  var element = this._document.getElementById('view-' + id);
  ko.applyBindings(instance, element);
  instance.setup();
  this._views[id] = instance;
  return instance;
};

ViewManager.prototype.getViewById = function (id) {
  if (typeof this._views[id] === 'undefined') {
    return null;
  }
  return this._views[id];
};

module.exports = ViewManager;