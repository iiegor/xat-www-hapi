var Boom = require('boom');

module.exports = function(request, reply) {
  if (request.method === 'post') {
    return reply(Boom.unauthorized("You're not authorized to enter this area."));
  }

  var opts = { };

  reply.view('user/signup', opts).code(200);
};