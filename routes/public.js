var _ = require('lodash');

var unathenticatedRouteConfig = {
  config: {
    auth: {
      mode: 'try',
      strategy: 'session'
    },
    plugins: {
      'hapi-auth-cookie': {
        redirectTo: false
      }
    }
  }
};

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
    path: '/images/{path*}',
    method: 'GET',
    handler: {
      directory: {
        path: './assets/misc/images'
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
    handler: require('../facets/user/login.js')
  }, {
    path: '/login',
    method: 'POST',
    handler: require('../facets/user/login.js')
  }, {
    path: '/signup',
    method: 'GET',
    handler: require('../facets/user/signup.js')
  }, {
    path: '/signup',
    method: 'POST',
    handler: require('../facets/user/signup.js')
  }, {
    path: '/logout',
    method: 'POST',
    handler: require('../facets/user/logout')
  }, {
    path: '/~{username}',
    method: 'GET',
    handler: require('../facets/user/profile')
  }, {
    path: '/room/{room}',
    method: 'GET',
    handler: require('../facets/room/room.js')
  }, {
    path: '/login/gateway',
    method: 'GET',
    handler: function(request, reply) {
      var loggedInUser = request.loggedInUser;

      if (!loggedInUser) {
        return reply.redirect('/login?done=%2Flogin%2Fgateway').code(302);
      } else {
        return reply.view('user/login-gateway', {});
      }
    }
  }, {
    path: '/_monitor/ping',
    method: 'GET',
    handler: function(request, reply) {
      return reply('ok').code(200);
    }
  }, {
    path: "/_monitor/status",
    method: "GET",
    handler: require('../handlers/ops').status(require('../package.json').version)
  }, {
    path: '/web_gear/chat/auser3.php',
    method: 'GET',
    handler: require("../handlers/ops").auser
  }, {
    path: '/web_gear/chat/pow2.php',
    method: 'GET',
    handler: require("../handlers/ops").pow
  }, {
    path: '/web_gear/chat/ip2.php',
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
    path: '/web_gear/chat/eip.php',
    method: 'GET',
    handler: require("../handlers/ops").eip
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

routes = routes.map(function(route) {
  return _.merge({}, unathenticatedRouteConfig, route);
});

module.exports = routes;