var Hapi = require('hapi');
var P = require('bluebird');
var path = require('path');

module.exports = makeServer;

function makeServer(config) {
  return P.resolve().then(function() {
    var server = new Hapi.Server({
      connections: {
        router: {
          stripTrailingSlash: true
        },
        routes: {
          security: {
            hsts: {
              maxAge: 1000 * 60 * 60 * 24 * 30,
              includeSubdomains: true
            },
            xframe: true
          }
        }
      }
    });
    server.connection(config.connection);

    return P.promisify(server.register, server)(require('./../adapters/plugins')).then(function() {
      server.views({
        engines: {
          hbs: require('handlebars')
        },
        relativeTo: path.resolve(__dirname, '..'),
        path: './templates',
        helpersPath: './templates/helpers',
        layoutPath: './templates/layouts',
        partialsPath: './templates/partials',
        layout: 'default'
      });

      server.route(require('./../routes/index'));
    }).then(function() {
      return P.promisify(server.start, server)();
    }).then(function() {
      return server;
    })
  });
}