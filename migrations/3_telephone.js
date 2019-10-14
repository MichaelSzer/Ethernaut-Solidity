const TelephoneCaller = artifacts.require("TelephoneCaller");

module.exports = function(deployer) {
  deployer.deploy(TelephoneCaller);
};
