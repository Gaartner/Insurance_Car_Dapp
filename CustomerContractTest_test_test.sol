// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
import "remix_tests.sol"; // this import is automatically injected by Remix.
import "../contracts/Customer.sol";

contract CustomerContractTest {
    customerContract contractToTest;

    function beforeAll() public {
        contractToTest = new customerContract();
    }

    function addCustomerTest() public {
        contractToTest.addCustomer("Test Customer", "Test Car", "All-Risk", 1800000000);
        (string memory name, string memory car, string memory insuranceType, uint expirationDate) = contractToTest.getCustomer(4);
        Assert.equal(name, "Test Customer", "Name should be 'Test Customer'");
        Assert.equal(car, "Test Car", "Car should be 'Test Car'");
        Assert.equal(insuranceType, "All-Risk", "Insurance type should be 'All-Risk'");
        Assert.equal(expirationDate, 1800000000, "Expiration date should be 1800000000");
    }

    function updateCustomerTest() public {
        contractToTest.updateCustomer(4, "Test Customer Updated", "Test Car Updated", "Third-Party", 1900000000);
        (string memory name, string memory car, string memory insuranceType, uint expirationDate) = contractToTest.getCustomer(4);
        Assert.equal(name, "Test Customer Updated", "Name should be 'Test Customer Updated'");
        Assert.equal(car, "Test Car Updated", "Car should be 'Test Car Updated'");
        Assert.equal(insuranceType, "Third-Party", "Insurance type should be 'Third-Party'");
        Assert.equal(expirationDate, 1900000000, "Expiration date should be 1900000000");
    }

    function getCustomerTest() public {
        (string memory name, string memory car, string memory insuranceType, uint expirationDate) = contractToTest.getCustomer(0);
        Assert.equal(name, "GOV Kevin", "Name should be 'GOV Kevin'");
        Assert.equal(car, "Mercedes", "Car should be 'Mercedes'");
        Assert.equal(insuranceType, "All-Risk", "Insurance type should be 'All-Risk'");
        Assert.equal(expirationDate, 1690761600, "Expiration date should be 1690761600");
    }
}
