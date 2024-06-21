// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
 * @title To write or update a state variable you need to send a transaction.
 * @author Carl Fu
 */
contract SimpleStorage {
    // State variable to store a number
    uint256 private num;

    // You need to send a transaction to write to a state variable.
    function set(uint256 _num) public {
        num = _num;
    }

    // You can read from a state variable without sending a transaction.
    function get() public view returns (uint256) {
        return num;
    }
}
