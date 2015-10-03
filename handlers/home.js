module.exports = function(request, reply) {
  var context = {};

  reply.view('home', context);
}