var HDWalletProvider = require("truffle-hdwallet-provider");
var mnemonic = "insert menmonics here";

module.exports = {
  networks: {
    //development: {
    //  host: "127.0.0.1",
    //  port: 7545,
    //  network_id: "*"
    //},
    development: {
      provider: function() {
        return new HDWalletProvider(mnemonic, "YOUR INFURA TOKEN")
      },
      network_id: 3,
      gas: 4000000      //make sure this gas allocation isn't over 4M, which is the max
      

    },
    rinkeby: {
      provider: function() {
        return new HDWalletProvider(mnemonic, "YOUR INFURA TOKEN");
      },
      network_id: 4,
      gasPrice: 20000000000,
      gas: 3716887
    },
    mainnet: {
      provider: function() {
        return new HDWalletProvider(mnemonic, "YOUR INFURA TOKEN")
      },
      network_id: 1,
      gasPrice: 2000000000,
      gas: 4000000      //make sure this gas allocation isn't over 4M, which is the max
      

    }
  }
};