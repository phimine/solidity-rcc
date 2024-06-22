// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
 * @title Variables are declared as either storage, memory or calldata to explicitly specify the location of the data.
 * storage variable: is a state variable (store on blockchain)
 * memory variable: is in memory and it exists while a function is being called
 * calldata: special data location that contains function arguments
 * @author Carl Fu
 */
contract DataLocations {
    struct MyStruct {
        uint256 foo;
    }

    uint256[] public arr;
    mapping(uint256 => address) public map;
    mapping(uint256 => MyStruct) public myStructs;

    function f() public {
        _f(arr, map, myStructs[1]);
    }

    function _f(
        uint256[] storage _arr,
        mapping(uint256 => address) storage _map,
        MyStruct storage _myStruct
    ) internal {
        // can't be public, why?
    }

    // You can return memory variables
    function g(uint256[] memory _arr) public pure returns (uint256[] memory) {
        // _arr.pop(); // Array in memory location can't push/pop
        _arr[0] = 0;
        return _arr;
    }

    function h(uint256[] calldata _arr) external {
        //_arr[0] = 0; // Array in calldata location is read-only.
    }
}
