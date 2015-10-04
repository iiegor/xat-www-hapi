var expect = require('code').expect,
  Lab = require('lab'),
  lab = exports.lab = Lab.script(),
  describe = lab.experiment,
  it = lab.test,
  routes = require("../routes/index");

describe("routes", function() {
  it("is an array", function(done) {
    expect(routes).to.be.an.array();
    done();
  });

  it("exists a home page", function(done) {
    var home = routes.at("GET /");
    expect(home).to.be.an.object();
    done();
  });
});