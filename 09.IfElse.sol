// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
 * @title Solidity supports conditional statements if, else if and else.
 * @author Carl Fu
 */
contract IfElse {
    enum Age {
        CHILDREN,
        ADAULT,
        OLDER
    }

    function foo(uint256 x) public pure returns (Age) {
        if (x < 18) {
            return Age.CHILDREN;
        } else if (x <= 60) {
            return Age.ADAULT;
        } else {
            return Age.OLDER;
        }
    }

    function ternary(uint x) public pure returns (Age) {
        return x < 18 ? Age.CHILDREN : Age.ADAULT;
    }
}
