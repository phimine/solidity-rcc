// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
 * @title Constants are variables that cannot be modified.
 * Their value is hard coded and using constants can save gas cost.
 * @author Carl Fu
 */
contract Constants {
    // coding convention to uppercase constant variables
    address public constant MY_ADDR =
        0x0000000000000000000000000000000000000000;

    uint256 public constant MY_NUM = 12345;
}
