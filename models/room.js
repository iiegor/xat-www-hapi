var _ = require('lodash'),
  P = require('bluebird');
  
var Room = module.exports = function(opts) {
  _.extend(this, opts);

  return this;
};

Room.new = function(request) {
  return new Room({
    database: request.database
  });
};

Room.prototype.get = function(info, callback) {
  var self = this;

  return new P(function(resolve, reject) {
    // TODO: Select only the needed data.
    self.database.query("SELECT * FROM chats WHERE name = '" + info.name + "' LIMIT 1", function(err, data) {
      if (err) {
        return reject(err);
      }

      return resolve(data[0]);
    });
  }).nodeify(callback);
};
