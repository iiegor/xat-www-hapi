var routes = [
  {
    path: '/',
    method: 'GET',
    handler: function(request, reply) {
      reply('Hello world!');
    }
  }
];

module.exports = routes;