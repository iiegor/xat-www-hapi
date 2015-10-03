var connection = {
  host: process.env.HOST || "localhost",
  port: process.env.PORT || "8080"
};

require('./lib/startup')({
  connection: connection
}).then(function(server) {
  console.log('Hapi server started @' + server.info.uri)
}).catch(function(err) {
  process.nextTick(function() {
    throw err;
  });
});