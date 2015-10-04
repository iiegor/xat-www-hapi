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
    path: '/login',
    method: 'GET',
    handler: require('../handlers/account.js').login
  }, {
    path: '/room/{room}',
    method: 'GET',
    handler: require('../handlers/room.js')
  }, {
    path: '/web_gear/chat/auser3.php',
    method: 'GET',
    handler: require("../handlers/ops").auser
  }, {
    path: '/web_gear/chat/pow2.php',
    method: 'GET',
    handler: require("../handlers/ops").pow
  }, {
    path: '/web_gear/chat/ip2.htm',
    method: 'GET',
    handler: require("../handlers/ops").ips
  }, {
    path: '/web_gear/chat/kiss.php',
    method: 'GET',
    handler: require("../handlers/ops").kiss
  }, {
    path: '/web_gear/chat/gift2.php',
    method: 'GET',
    handler: require("../handlers/ops").gift
  }, {
    path: '/json/lang/customlang2.php',
    method: 'GET',
    handler: require("../handlers/ops").customlang
  }, {
    path: '/{p*}',
    method: '*',
    handler: require("../handlers/fallback")
  }
];

module.exports = routes;