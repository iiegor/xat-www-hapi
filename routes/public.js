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
    path: '/',
    method: 'GET',
    handler: require('../handlers/home.js')
  }, {
    path: '/room/{name}',
    method: 'GET',
    handler: require('../handlers/room.js')
  }, {
    method: '*',
    path: '/{p*}',
    handler: require("../handlers/fallback")
  }
];

module.exports = routes;