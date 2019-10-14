const DelegateCalls = artifacts.require("DelegateCalls");

module.exports = function(deployer) {
  deployer.deploy(DelegateCalls);
};
