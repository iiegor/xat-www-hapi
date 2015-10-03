module.exports = function m(str, add) {
  var i = str.indexOf('://') + 3;
  
  // (str.indexOf('http') > -1 ? 'http://' : 'https://')
  str = str.slice(0, i) + add + str.slice(i);

  return str;
};