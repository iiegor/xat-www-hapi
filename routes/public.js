var routes = [
  {
    path: '/static/{path*}',
    method: 'GET',
    handler: {
      directory: {
        path: './static'
      }
    },
    config: {
      cache: {
        expiresIn: 7 * 24 * 60 * 60 * 1000
      }
    }
  }, {
    path: '/web_gear/{path*}',
    method: 'GET',
    handler: {
      directory: {
        path: './assets/misc'
      }
    }
  }, {
    path: '/crossdomain.xml',
    method: 'GET',
    handler: {
      file: './assets/misc/crossdomain.xml'
    }
  }, {
    path: '/',
    method: 'GET',
    handler: require('../handlers/home.js')
  }, {
    path: '/room/{room}',
    method: 'GET',
    handler: require('../handlers/room.js')
  }, {
    path: '/{p*}',
    method: '*',
    handler: require("../handlers/fallback")
  }, {
    paths: [
      '/web_gear/chat/auser3.php',
      '/web_gear/chat/ip2.htm',
      '/web_gear/chat/pow2.php',
      '/web_gear/chat/kiss.php',
      '/web_gear/chat/gift2.php'
    ],
    method: 'GET',
    handler: function(request, reply) {
      reply('pinggggg')
    }
  }
];

module.exports = routes;