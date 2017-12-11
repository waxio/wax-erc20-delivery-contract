var WaxToken = artifacts.require('./WaxToken.sol')

module.exports = function (deployer) {
  deployer.deploy(WaxToken)
}
