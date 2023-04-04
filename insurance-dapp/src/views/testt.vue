<template>
  <div>
    <h1>{{ message }}</h1>
  </div>
</template>

<script>
import Web3 from "web3";

export default {
  data() {
    return {
      message: "Hello, world!",
      customerName: null,
    };
  },
  mounted() {
    const web3 = new Web3(
      new Web3.providers.HttpProvider("http://127.0.0.1:7545")
    );
    const customerContractJSON = require("/Users/lucsky/Documents/Fun/portfolioproject/Insurance_Car_Dapp/Customer.json");
    const customerContractAddress =
      "0xF23A30AB68fee497499703D8F06eA0430D1ae880";
    const customerContract = new web3.eth.Contract(
      customerContractJSON.abi,
      customerContractAddress
    );
    customerContract.methods
      .getName()
      .call()
      .then((name) => {
        this.customerName = name;
      });
  },
};
</script>
