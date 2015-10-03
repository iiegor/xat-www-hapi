module.exports = function(request, reply) {
  var route = request.params.p;
  var context = { };

  reply.view('errors/not-found', context).code(404);
};