// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
 * @title A constructor is an optional function that is executed upon contract creation.
 * @author Carl Fu
 */
contract X {
    string public name;

    constructor(string memory _name) {
        name = _name;
    }
}

contract Y {
    string public text;

    constructor(string memory _text) {
        text = _text;
    }
}

contract A is X {
    // constructor()  {}   --> cause compile error:
    //  No arguments passed to the base constructor. Specify the arguments or mark "A" as abstract.solidity(3415)
    constructor() X("Input to X") {}
}

// There are 2 ways to initialize parent contract with parameters.
// Pass the parameters here in the inheritance list.
contract B is X("Input to X"), Y("Input to Y") {

}

// Pass the parameters here in the constructor,
contract C is X, Y {
    constructor(string memory _name, string memory _text) X(_name) Y(_text) {}
}

/**
 * Parent constructors are always called in the order of inheritance
 * regardless of the order of parent contracts listed in the
 * constructor of the child contract.
 */
// Order of constructors called:
// 1. X
// 2. Y
// 3. D
contract D is X, Y {
    constructor() X("X is called") Y("Y is called") {}
}

// Order of constructors called:
// 1. X
// 2. Y
// 3. E
contract E is X, Y {
    constructor() X("X is called") Y("Y is called") {}
}
