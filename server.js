require('./lib/environment')();

var bole = require('bole');

var log = bole('server');
bole.output({
  level: 'info',
  stream: process.stdout
});

var connection = {
  host: process.env.HOST || "localhost",
  port: process.env.PORT || "5000"
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