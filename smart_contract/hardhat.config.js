// As it was said in Hardhat Docs:
// You can use this plugin to build smart contract tests using Waffle in Hardhat
require('@nomiclabs/hardhat-waffle');

// "url" value from alchemy
// "accounts" value from metamask private key
module.exports = {
  solidity: '0.8.0',
  networks: {
    ropsten: {
      url: 'https://eth-ropsten.alchemyapi.io/v2/eFhZhJsoNd_O-xrxT0z83DRCMwUhfPVP',
      accounts: [ '3941f6b126e6a0e4080b6da07eeecc8c4835601324901757432996a3083599eb' ]
    }
  }
}