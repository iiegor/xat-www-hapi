module.exports = {
  login: function(request, reply) {
    var context = { };

    reply.view('login', context);
  }
};