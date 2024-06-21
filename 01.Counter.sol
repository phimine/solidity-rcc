// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

/**
 * @title Here is a simple contract that you can get, increment and decrement the count store in this contract.
 * @author Carl Fu
 */
contract Counter {
    uint256 private count;

    // get function
    function get() public view returns (uint256) {
        return count;
    }

    // increase function
    function increase() public {
        count += 1;
    }

    // decrease function
    function descrease() public {
        count -= 1;
    }
}
