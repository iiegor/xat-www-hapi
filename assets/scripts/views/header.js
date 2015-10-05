var ko = require('../vendor/knockout');

function Header() { 
  this.showNotice = this.getNoticeStatus();
}

Header.prototype.getNoticeStatus = function() {
  var cookieValue = document.cookie.replace(/(?:(?:^|.*;\s*)showNotice\s*\=\s*([^;]*).*$)|^.*$/, "$1");

  return ko.observable(cookieValue.length > 0 ? false : true);
};

Header.prototype.hideNotice = function() {
  document.cookie = "showNotice=false; expires=Fri, 31 Dec 9999 23:59:59 GMT; path=/";
  this.showNotice(false);
};

Header.prototype.setup = function() {
  return this;
};

module.exports = Header;