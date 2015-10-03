module.exports = function(request, reply) {
  var name = request.params.name;
  var context = {
    name: name
  };

  reply.view('room', context);
};