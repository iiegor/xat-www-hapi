var fmt = require("util").format;

var lockoutInterval = 60; // seconds
var maxAttemptsBeforeLockout = 5;

var users = {
  iegor: {
    id: '1',
    username: 'iegor',
    fullname: 'Iegor Azuaga',
    password: 'iegor3'
  }
};

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
      user = users[request.payload.name];
      if (!user || user.password !== request.payload.password) {
        opts.error = 'Invalid username or password';
      }
      else {
        request.auth.session.set(user);

        var donePath = getDonePath(user);
        return reply.redirect(donePath);
      }
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
      return '/~' + user.username;
    } else {
      return '';
    }
  }
};