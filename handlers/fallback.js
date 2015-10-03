module.exports = function(request, reply) {
  var context = { };

  reply.view('errors/not-found', context).code(404);
};