<template>
  <div class="home">
    <h2>What is BlockInsure ?</h2>
    <p>BlockInsure is a decentralized blockchain-based application for car insurance that aims to simplify the process of managing car insurance policies and claims processing. The platform removes intermediaries from the traditional car insurance process and leverages the benefits of blockchain technology to provide a more secure and efficient way of managing car insurance.</p>
    <h2>How does BlockInsure work ?</h2>
    <div class="content-wrapper">
      <p>BlockInsure works by utilizing three main components: the car dealer, the client, and the car insurance company. The car dealer creates the insurance policy by filling out a form on the DApp, which generates a smart contract on the blockchain network. Once the client fills in the necessary information and signs the smart contract, the policy becomes active. The car insurance company can then access policy information and process claims in a decentralized manner. Additionally, our claim department handles the processing of claims, making the process easy for clients. Once a claim is filed, the car insurance company can process the claim and transfer the payout to the client's wallet address on the blockchain.</p>
      <img src="../assets/blockchain.png" alt="Image description">
    </div>
    <h2>Why should I use BlockInsure?</h2>
    <p>By using BlockInsure, you can benefit from a simplified car insurance process that is secure and efficient. Our decentralized platform eliminates intermediaries from the traditional car insurance process, leading to reduced costs and increased transparency. The smart contract system on the blockchain ensures that all policy and claim data is stored securely and is tamper-proof, providing you with peace of mind. BlockInsure also provides a seamless exchange of information between the car dealer, client, and car insurance company, improving efficiency and reducing the potential for errors. Choose BlockInsure for a hassle-free and secure car insurance experience.</p>
  </div>
</template>

<script>
export default {
  data() {
    return {
      message: 'This is a text'
    }
  },
  methods: {
    setMessage(newMessage) {
      this.message = newMessage;
    }
  }
}
</script>

<style>
.home {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  width: 100%;
  height: 100%;
  color: white;
}

.content-wrapper{
  display: flex;
  flex-direction: row;
  align-items: center;
}

p{
  flex: 1;
}

img{
  margin-left: 30px;
  max-width: 200px;
}
</style>