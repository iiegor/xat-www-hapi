var Room = require('../../models/room');

module.exports = function(request, reply) {
  var opts = { 
    name: request.params.room
  };

  Room.new(request).get(opts, function(err, room) {
    if (err || !room) {
      return reply.redirect('/');
    }

    opts.room = room;

    return reply.view('room/room', opts).code(200);
  });
};