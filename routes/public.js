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
  }
];

module.exports = routes;