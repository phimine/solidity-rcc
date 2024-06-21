// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
 * @title Transactions are paid with ether. 1 ETH = 10(9) GWEI = 10(18) WEI
 * @author
 * @notice
 */
contract EtherUnit {
    uint256 public oneWei = 1 wei;
    bool public isOneWei = oneWei == 1;

    uint256 public oneGwei = 1 gwei;
    bool public isOneGwei = oneGwei == 1e9; // 1000000000 wei

    uint256 public oneEth = 1 ether;
    bool public isOneEth = oneEth == 1e18; // 1000000000000000000 wei
}
