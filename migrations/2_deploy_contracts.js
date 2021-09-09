const RynoFactory = artifacts.require('RynoFactory');

module.exports = function(deployer, network, accounts) {
  deployer.deploy(RynoFactory, accounts[0]);
}
