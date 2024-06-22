// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

error Account__Overflow();
error Account__InsuffientBalance(
    uint256 currentBalance,
    uint256 withdrawAmount
);

contract Account {
    uint256 public balance;

    function deposit(uint256 _amount) public {
        uint256 oldBalance = balance;
        uint256 newBalance = balance + _amount;

        require(newBalance >= oldBalance, "OVERFLOW!");

        if (newBalance < oldBalance) {
            revert Account__Overflow();
        }

        balance = newBalance;
        assert(balance >= oldBalance);
    }

    function withdraw(uint256 _amount) public {
        uint256 oldBalance = balance;

        require(balance >= _amount, "Insuffient Balance!");

        if (oldBalance < _amount) {
            revert Account__InsuffientBalance(oldBalance, _amount);
        }

        balance -= _amount;
        assert(balance <= oldBalance);
    }
}
