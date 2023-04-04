<template>
  <div class="customer">
    <h1>Customer page</h1>
    <div class="buttons">
	<table id="myTable">
      <thead>
        <tr>
          <th> Nom </th>
          <th> Marque </th>
          <th> Type d'assurance </th>
          <th> Date </th>
        </tr>
      </thead>
      <tbody>
      </tbody>
	</table>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      message: 'This is a text',
      customerList: [],
      customerName: null,
      car: null,
      insuranceType: null,
      expirationDate: null
    }
  },
  methods: {
    setMessage(newMessage) {
      this.message = newMessage;
    }
  },

  mounted() {
    const Web3 = require('web3');
	const providerUrl = 'http://localhost:7545'; // Replace with your Ganache provider URL
	const web3 = new Web3(new Web3.providers.HttpProvider(providerUrl));
	const contractAbi = [
		{
			"inputs": [],
			"stateMutability": "nonpayable",
			"type": "constructor"
		},
		{
			"inputs": [],
			"name": "ALL_RISK",
			"outputs": [
				{
					"internalType": "string",
					"name": "",
					"type": "string"
				}
			],
			"stateMutability": "view",
			"type": "function"
		},
		{
			"inputs": [],
			"name": "THIRD_PARTY",
			"outputs": [
				{
					"internalType": "string",
					"name": "",
					"type": "string"
				}
			],
			"stateMutability": "view",
			"type": "function"
		},
		{
			"inputs": [
				{
					"internalType": "string",
					"name": "_name",
					"type": "string"
				},
				{
					"internalType": "string",
					"name": "_car",
					"type": "string"
				},
				{
					"internalType": "string",
					"name": "_insuranceType",
					"type": "string"
				},
				{
					"internalType": "uint256",
					"name": "_expirationDate",
					"type": "uint256"
				}
			],
			"name": "addCustomer",
			"outputs": [],
			"stateMutability": "nonpayable",
			"type": "function"
		},
		{
			"inputs": [],
			"name": "customerCount",
			"outputs": [
				{
					"internalType": "uint256",
					"name": "",
					"type": "uint256"
				}
			],
			"stateMutability": "view",
			"type": "function"
		},
		{
			"inputs": [
				{
					"internalType": "uint256",
					"name": "",
					"type": "uint256"
				}
			],
			"name": "customers",
			"outputs": [
				{
					"internalType": "uint256",
					"name": "id",
					"type": "uint256"
				},
				{
					"internalType": "string",
					"name": "name",
					"type": "string"
				},
				{
					"internalType": "string",
					"name": "car",
					"type": "string"
				},
				{
					"internalType": "string",
					"name": "insuranceType",
					"type": "string"
				},
				{
					"internalType": "uint256",
					"name": "expirationDate",
					"type": "uint256"
				}
			],
			"stateMutability": "view",
			"type": "function"
		},
		{
			"inputs": [
				{
					"internalType": "uint256",
					"name": "_id",
					"type": "uint256"
				}
			],
			"name": "getCustomer",
			"outputs": [
				{
					"internalType": "string",
					"name": "",
					"type": "string"
				},
				{
					"internalType": "string",
					"name": "",
					"type": "string"
				},
				{
					"internalType": "string",
					"name": "",
					"type": "string"
				},
				{
					"internalType": "uint256",
					"name": "",
					"type": "uint256"
				}
			],
			"stateMutability": "view",
			"type": "function"
		},
		{
			"inputs": [],
			"name": "testGetString",
			"outputs": [
				{
					"internalType": "string",
					"name": "",
					"type": "string"
				}
			],
			"stateMutability": "pure",
			"type": "function"
		},
		{
			"inputs": [
				{
					"internalType": "uint256",
					"name": "_customerId",
					"type": "uint256"
				},
				{
					"internalType": "string",
					"name": "_name",
					"type": "string"
				},
				{
					"internalType": "string",
					"name": "_car",
					"type": "string"
				},
				{
					"internalType": "string",
					"name": "_insuranceType",
					"type": "string"
				},
				{
					"internalType": "uint256",
					"name": "_expirationDate",
					"type": "uint256"
				}
			],
			"name": "updateCustomer",
			"outputs": [],
			"stateMutability": "nonpayable",
			"type": "function"
		}
	]

	let contract = new web3.eth.Contract(contractAbi, '0xE17De20a1AE2A81E5E3EA749E66f5Cb6F566e81d');

	let cpt = 0
	let tmp = []
	function getCustomer() {
		contract.methods.getCustomer(cpt).call({ gas: 1000000 }).then((result) => {
			const customer = {
				customerName: result[0],
				car: result[1],
				insuranceType: result[2],
				expirationDate: new Date(result[3] * 1000).toLocaleDateString('en-US')
			};
			if (customer.customerName == "") {
				console.log("Finished fetching customers");
			} else {
				tmp.push(customer);
				
				const table = document.getElementById('myTable'); 
				const newRow = table.insertRow();
				const nameCell = newRow.insertCell();
				const carCell = newRow.insertCell();
				const insurancelCell = newRow.insertCell();
				const dateCell = newRow.insertCell();
				nameCell.textContent = customer.customerName;
				carCell.textContent = customer.car;
				insurancelCell.textContent = customer.insuranceType;
				dateCell.textContent = customer.expirationDate;

				cpt = cpt + 1;
				getCustomer(); 
			}
		}).catch((error) => {
			console.error(error);
		});
	}
	getCustomer();
	console.log(tmp);

},
}

</script>

<style>
.customer {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  width: 100%;
  height: 100%;
  color: white;
}

table {
  border-collapse: collapse;
  border: 2px solid white;
}

th, td {
  border: 1px solid white;
  padding: 8px;
  text-align: left;
}

</style>