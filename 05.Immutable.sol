// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
 * @title Immutable variables are like constants. Values of immutable variables can be set inside the constructor but cannot be modified afterwards.
 * @author Carl Fu
 */
contract Immutable {
    address public immutable i_addr;
    uint256 public immutable i_num;

    constructor(uint num) {
        i_addr = msg.sender;
        i_num = num;
    }
}
