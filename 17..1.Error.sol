// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
 * @title An error will undo all changes made to the state during a transaction.
 * You can throw an error by calling require, revert or assert.
 *
 * require -- is used to validate inputs and conditions before or after execution.
 * revert -- is similar to require. See the code below for details.
 * assert -- is used to check for code that should never be false. Failing assertion probably means that there is a bug.
 *
 * Use custom error to save gas.
 *
 * @author Carl Fu
 */
contract Error {
    /**
     * Require should be used to validate conditions such as:
     * - inputs
     * - conditions before execution
     * - return values from calls to other functions
     */
    function testRequire(uint256 _num) public pure {
        require(_num < 100, "Input must be less than 100!");
    }

    /**
     * Revert is useful when the condition to check is complex.
     * This code does the exact same thing as the example above
     */
    function testRevert(uint256 _num) public pure {
        if (_num >= 100) {
            revert("Input must be less than 100!");
        }
    }

    /**
     * Assert should only be used to test for internal errors, and to check invariants.
     */
    function testAssert() public pure {
        uint256 result = 1 + 1;
        assert(result == 2);
    }

    // custom error
    error InsufficientBalance(uint256 balance, uint256 withdrawAmount);

    function testCustomerError(uint256 amount) public view {
        uint256 balance = address(this).balance;
        if (balance < amount) {
            // revert InsufficientBalance(balance, amount);
            revert InsufficientBalance({
                balance: balance,
                withdrawAmount: amount
            });
        }
    }
}
