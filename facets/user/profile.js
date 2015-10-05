module.exports = function(request, reply) {
  var opts = {
    profileName: request.params.username
  };

  reply.view('user/profile', opts).code(200);
};