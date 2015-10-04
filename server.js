require('./lib/environment')();

var bole = require('bole');

var log = bole('server');
bole.output({
  level: 'info',
  stream: process.stdout
});

var connection = {
  port: process.env.PORT || "8080"
};

require('./lib/startup')({
  connection: connection
}).then(function(server) {
  log.info('Hapi server started @' + server.info.uri)
}).catch(function(err) {
  // Throw the error.
  process.nextTick(function() {
    throw err;
  });
});