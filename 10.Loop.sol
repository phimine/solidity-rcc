// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
 * @title Solidity supports for, while, and do while loops
 * Don't write loops that are unbounded as this can hit the gas limit, causing your transaction to fail.
 * For the reason above, while and do while loops are rarely used.
 * @author Carl Fu
 */
contract Loop {
    function loop() public pure {
        // for
        for (uint8 i = 0; i < 100; i++) {
            if (i % 2 == 0) {
                continue;
            }
            if (i == 72) {
                break;
            }
        }

        // while
        uint256 x = 0;
        while (x < 100) {
            x++;
        }

        uint256 y = 100;
        do {
            y--;
        } while (y == 0);
    }
}
