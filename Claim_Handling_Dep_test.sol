// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
import "remix_tests.sol"; // this import is automatically injected by Remix.
import "../contracts/Claim_Handling_Dep.sol";
import "../contracts/CarDealer.sol";

contract TestClaimHandling {

    CarDealer carDealer;
    claimHandling claim;
    address dealerAddress;

    function beforeAll() public {
        // Create a new instance of the CarDealer contract
        carDealer = new CarDealer();

        // Set the address of the CarDealer contract in the claimHandling contract
        claim = new claimHandling();
        dealerAddress = address(carDealer);
        claim.setDealerAddresss(dealerAddress);
    }

    function testPayAmountThirdParty() public {
        uint expected = 600;
        uint actual = claim.payAmountThirdParty(50);
        Assert.equal(actual, expected, "Wrong amount returned for 50% damage");
    }

    function testSendClaimDealer() public {
        (bool repairs, uint256 receipt) = claim.sendClaimDealer(75);
        //Assert.isTrue(repairs, "Repairs should be needed for 75% damage");
        Assert.equal(receipt,800, "Wrong receipt amount for 75% damage");
    }
}
