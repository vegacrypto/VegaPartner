const { deploy } = require("truffle-contract/lib/execute");

const ThirdPartNFT = artifacts.require("ThirdPartNFT");

module.exports = async function (deployer) {
  await deployer.deploy(ThirdPartNFT, "vega idol nft", "VIN");
};
