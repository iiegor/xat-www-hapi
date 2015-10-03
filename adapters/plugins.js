module.exports = [
  require('inert'),
  require('vision'),
  {
    register: require('./renderer'),
    options: {
      lang: "en_US"
    }
  }
];