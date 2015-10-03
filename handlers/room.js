module.exports = function(request, reply) {
  var name = request.roomName;
  var context = {
    room: name
  };

  reply.view('room', context);
};