// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
 * @title Array can have a compile-time fixed size or a dynamic size.
 * @author Carl Fu
 */
contract Array {
    // Several ways to initialize an array
    uint256[] public arr1;
    uint256[] public arr2 = [1, 2, 3];

    // Fix-sized array, all elements initialize to 0
    uint256[10] public arr3;

    function get(uint256 i) public view returns (uint256) {
        return arr1[i];
    }

    // Solidity can return the entire array.
    // But this function should be avoided for
    // arrays that can grow indefinitely in length.
    function get() public view returns (uint256[] memory) {
        return arr1;
    }

    // Append to array
    // This will increase the array length by 1.
    function push(uint256 _num) public {
        arr1.push(_num);
    }

    // Remove last element from array
    // This will decrease the array length by 1
    function pop() public {
        arr1.pop();
    }

    function getLength() public view returns (uint256) {
        return arr1.length;
    }

    function remove(uint256 _index) public {
        delete arr1[_index];
    }

    // create array in memory, only fixed size can be created
    function example() external pure returns (uint256[] memory) {
        uint256[] memory a = new uint256[](5);
        return a;
    }
}
