function ElementManager(doc) {
  this._document = doc || window.document;
  this._elements = {};
}

ElementManager.prototype.register = function (id, instance) {
  this._elements[id] = document.registerElement(id, {prototype: instance});

  return this._elements[id];
};

module.exports = ElementManager;