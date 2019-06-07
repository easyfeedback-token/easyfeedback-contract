var EFToken = artifacts.require("EFToken");

module.exports = function(deployer) {
  // Deploy the METoken contract as our only task
  deployer.deploy(EFToken);
};