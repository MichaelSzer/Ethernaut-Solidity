const GuessCoinFlip = artifacts.require("GuessCoinFlip");
const CoinFlip = artifacts.require("CoinFlip");

module.exports = function(deployer) {
  deployer.deploy(GuessCoinFlip);
  deployer.deploy(CoinFlip);
};
