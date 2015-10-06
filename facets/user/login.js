var User = require('../../models/user'),
  url = require('url');

var loginAttempts = [];
var lockoutInterval = 60000; // seconds
var maxAttemptsBeforeLockout = 5;

module.exports = function(request, reply) {
  if (request.auth.isAuthenticated) {
    return reply.redirect('/');
  }

  var opts = { };

  if (request.method === 'post') {
    if (!request.payload.name || !request.payload.password) {
      opts.error = {
        type: 'missing'
      };
    } else {
      // Check or register login attempt
      var loginAttempt;

      if (!loginAttempts[request.payload.name]) loginAttempts[request.payload.name] = 0;

      if (loginAttempts[request.payload.name] >= maxAttemptsBeforeLockout) {
        opts.errors = [
          {
            message: "Login has been disabled for 60 seconds to protect your account from attacks. Consider resetting your password."
          }
        ];

        setTimeout(function() { 
          delete loginAttempts[request.payload.name]; 
        }, lockoutInterval);

        return reply.view('user/login', opts).code(403);
      }

      loginAttempts[request.payload.name] += 1;

      // Try login the user
      User.new(request).login(request.payload, function(err, user) {
        if (err || !user) {
          opts.error = 'Invalid username or password';

          return reply.view('user/login', opts).code(400);
        }

        request.auth.session.set(user);
        delete loginAttempts[request.payload.name];

        var donePath = getDonePath(user);
        return reply.redirect(donePath);
      });
    }
  }

  if (request.method === 'get' || opts.error) {
    opts.donePath = getDonePath();
    return reply.view('user/login', opts).code(opts.error ? 400 : 200);
  }

  function getDonePath(user) {
    var donePath = request.query.done || (request.payload && request.payload.done);

    if (donePath) {
      // Make sure that we don't ever leave this domain after login
      // resolve against a fqdn, and take the resulting pathname
      var done = url.resolveObject('https://example.com/login', donePath.replace(/\\/g, '/'));
      return done.pathname + (done.search || "");
    } else if (user) {
      return '/login/gateway';
    } else {
      return '';
    }
  }
};