const HDWalletProvider = require('@truffle/hdwallet-provider');
const Web3 = require('web3');

const infuraKey = 'YOUR_INFURA_PROJECT_ID';
const walletMnemonic = 'YOUR_MNEMONIC';

module.exports = {
  networks: {
    development: {
      host: '127.0.0.1',
      port: 7545,
      network_id: '*',
    },
    ropsten: {
      provider: () => new HDWalletProvider(walletMnemonic, `https://ropsten.infura.io/v3/${infuraKey}`),
      network_id: 3,
      gas: 5500000,
    },
  },
  compilers: {
    solc: {
      version: '0.8.17',
    }
  }
};