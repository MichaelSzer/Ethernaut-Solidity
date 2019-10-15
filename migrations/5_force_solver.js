const Meow = artifacts.require("Meow");
const ForceSolver = artifacts.require("ForceSolver");

module.exports = function(deployer) {
  deployer.deploy(Meow);
  deployer.deploy(ForceSolver);
};
