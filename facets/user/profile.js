var UserModel = require('../../models/user');

module.exports = function(request, reply) {
  var loggedInUser = request.loggedInUser;
  var profileName = request.params.username;

  var User = UserModel.new(request);

  var opts = {
    profileName: profileName,
    isSelf: loggedInUser && profileName === loggedInUser.username,
    isStaff: true
  };

  reply.view('user/profile', opts).code(200);
};