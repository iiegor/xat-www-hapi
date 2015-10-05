var _ = require('lodash'),
  P = require('bluebird');

var User = module.exports = function(opts) {
  _.extend(this, {
    bearer: false
  }, opts);

  return this;
};

User.new = function(request) {
  var bearer = request.loggedInUser && request.loggedInUser.name;
  return new User({
    bearer: bearer,
    database: request.database
  });
};

User.prototype.login = function(info, callback) {
  var self = this;

  return new P(function(resolve, reject) {
    self.database.query("SELECT * FROM users WHERE username = '" + info.name + "' AND password = '" + info.password + "' LIMIT 1", function(err, data) {
      if (err) {
        return reject(err);
      }

      return resolve(data[0]);
    });
  }).nodeify(callback);
};