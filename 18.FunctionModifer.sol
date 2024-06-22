// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

error FunctionModifier__NotOwner();
error FunctionModifier__InvalidAddress();
error FunctionModifier__SameOwner();
error FunctionModifier__Reentrancy();

/**
 * @title Modifiers are code that can be run before and / or after a function call.
 * Modifiers can be used to:
 * - Restrict access
 * - Validate inputs
 * - Guard against reentrancy hack
 * @author Carl Fu
 */
contract FunctionModifier {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        // require(owner == msg.sender, "Not Owner!");
        if (owner != msg.sender) {
            revert FunctionModifier__NotOwner();
        }
        _;
    }

    // Modifiers can take inputs.
    modifier validAddress(address _addr) {
        // require(_addr != address(0), "Invalid Address!");
        if (_addr == address(0)) {
            revert FunctionModifier__InvalidAddress();
        }
        if (_addr == owner) {
            revert FunctionModifier__SameOwner();
        }
        _;
    }

    function changeOwner(
        address _newOwner
    ) public onlyOwner validAddress(_newOwner) {
        owner = _newOwner;
    }

    /**
     * Modifiers can be called before and / or after a function.
     * This modifier prevents a function from being called while it is still executing.
     */
    bool public locked;
    uint256 public x = 10;
    modifier noReentrancy() {
        // require(!locked, "No Reentrancy!");
        if (locked) {
            revert FunctionModifier__Reentrancy();
        }
        locked = true;
        _;
        locked = false;
    }

    function decrease(uint256 _num) public noReentrancy {
        x -= _num;
        if (_num > 1) {
            decrease(_num - 1);
        }
    }
}
