// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
 * @title Gas used to pay for transaction
 * `gas` is unit of computation
 * `gas spent` is total amount of gas used in a transaction
 * `gas price` is how much ether to pay per gas
 *
 * `gas limit`: max amount of gas you are willing to use for transaction, set by you
 * `block gas limit`: max amount of gas allowed in a block, set by network
 * @author Carl Fu
 */
contract Gas {
    uint256 public i = 0;

    // Using up all of the gas that you send causes your transaction to fail.
    // State changes are undone.
    // Gas spent are not refunded.
    function infinite() public {
        // Here we run a loop until all of the gas are spent
        // and the transaction fails
        while (true) {
            i += 1;
        }

        /** error output:
         * transact to Gas.infinite errored: Error occurred: out of gas.
         *  out of gas
         *     The transaction ran out of gas. Please increase the Gas Limit.
         *
         *  You may want to cautiously increase the gas limit if the transaction went out of gas.
         */
    }
}
