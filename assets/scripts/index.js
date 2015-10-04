var ViewManager = require('./view-manager');
var ElementManager = require('./element-manager');
var VMHeader = require('./views/header');

var viewManager = new ViewManager();
var elementManager = new ElementManager();

viewManager.register('header', new VMHeader());