var Room = require('../../models/room');

module.exports = function(request, reply) {
  var opts = { 
    name: request.params.room
  };

  Room.new(request).get(opts, function(err, room) {
    if (err || !room) {
      return reply.redirect('/');
    }

    return reply.view('room/room', room).code(200);
  });
};