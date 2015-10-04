module.exports = function logout(request, reply) {
  var loggedInUser = request.loggedInUser;

  if (!loggedInUser) {
    return redirectToHome();
  }

  request.auth.session.clear();
  redirectToHome();

  function redirectToHome() {
    return reply.redirect('/');
  }
};