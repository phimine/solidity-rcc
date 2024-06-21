// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

/**
 * @title There are 3 types of variables in Solidity
 * local - declared inside a function, not stored on the blockchain
 * state - declared outside a function, stored on the blockchain
 * global - provides information about the blockchain
 * @author Carl Fu
 */
contract Variables {
    // State variables are stored on the blockchain.
    string public text = "Hello!";
    uint256 public num = 123;

    function doSomething()
        public
        view
        returns (uint256 num_local, uint256 timestamp, address sender)
    {
        // Local variables are not saved to the blockchain.
        num_local = 456;

        // Here are some global variables: block.timestamp, msg.sender, msg.value...
        timestamp = block.timestamp;
        sender = msg.sender;
    }
}
