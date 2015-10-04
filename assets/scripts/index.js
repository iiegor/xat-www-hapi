var ViewManager = require('./view-manager');
var VMHeader = require('./views/header');

var viewManager = new ViewManager();

viewManager.register('header', new VMHeader());