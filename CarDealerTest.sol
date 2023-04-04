// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

import "remix_tests.sol";
import "../contracts/CarDealer.sol";

contract CarDealerTest {
    CarDealer carDealer;
    
    function beforeAll() public {
        carDealer = new CarDealer();
    }
    
    function testRepairsRequest() public {
        (bool repairs, uint256 receipt) = carDealer.repairs_request(50);
        Assert.equal(repairs, true, "Repairs should be true");
        Assert.equal(receipt, 600, "Receipt should be 600");
        
        (repairs, receipt) = carDealer.repairs_request(75);
        Assert.equal(repairs, true, "Repairs should be true");
        Assert.equal(receipt, 800, "Receipt should be 800");
        
        (repairs, receipt) = carDealer.repairs_request(90);
        Assert.equal(repairs, true, "Repairs should be true");
        Assert.equal(receipt, 1000, "Receipt should be 1000");
        
        (repairs, receipt) = carDealer.repairs_request(110);
        Assert.equal(repairs, false, "Repairs should be false");
        Assert.equal(receipt, 0, "Receipt should be 0");
    }
}
