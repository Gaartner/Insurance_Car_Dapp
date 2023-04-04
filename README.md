# Insurance_Car_Dapp

Car Insurance dapp. The app will cover the functionality of a car insurance company with the third-party/all risk insurance by receving contract by the car dealer, the client and car insurance company which will exchange informations between all of those parties and be accessible but not writeable except if the three user are okay.
Getting Started

To use the Insurance Car Dapp, follow these steps:

Upload the following smart contract files to Remix IDE:

- CarDealer.sol
- Claim_Handling_dep.sol
- Claim_Processing_dep.sol
- Customer.sol
- 
Compile each smart contract file in Remix IDE.

Install MetaMask and Ganache.

Initialize both MetaMask and Ganache.

In Remix IDE, select the "dev ganache" environment in the Deploy section.

Deploy the four smart contracts to the Ganache network. Note the RPC server URL displayed in Ganache (something like "http://...").

Check in Ganache's transaction section to ensure that four blocks were successfully added.

Open Visual Studio Code and run npm install in the terminal to import the required node modules.

Go to the "views" section of the project and locate the "CustomerView.vue" file.

In line 237 of "CustomerView.vue", update the address "0xE17De20a1AE2A81E5E3EA749E66f5Cb6F566e81d" with the address of the deployed smart contract of the "Customer" contract, which you can find in the Remix IDE console.

Finally, run the command npm run serve to start the Vue.js app.

Access the Insurance Car Dapp in your web browser and enjoy!

Contributing

Contributions to the Insurance Car Dapp are welcome! Please open an issue or submit a pull request if you have any suggestions, bug fixes, or improvements.

Credits

The Insurance Car Dapp was developed by Alexandre Martins | Amaury Lin | Jean-Ludovic Kugblenu | Kevin Gov | Sofiane El Anzi | Thierry Zhang as part of digital finance lecture.
