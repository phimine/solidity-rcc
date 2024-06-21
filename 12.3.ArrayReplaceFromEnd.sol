// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
 * @title Remove array element by copying last element into to the place to remove
 * @author Carl Fu
 */
contract ArrayReplaceFromEnd {
    uint256[] public arr;

    // Deleting an element creates a gap in the array.
    // One trick to keep the array compact is to
    // move the last element into the place to delete.
    function remove(uint256 _index) public {
        arr[_index] = arr[arr.length - 1];
        arr.pop();
    }

    function test() external {
        arr = [1, 2, 3, 4];

        remove(1); // [1, 4, 3]
        assert(arr.length == 3);
        assert(arr[0] == 1);
        assert(arr[1] == 4);
        assert(arr[2] == 3);

        remove(0); // [3, 4]
        assert(arr.length == 2);
        assert(arr[0] == 3);
        assert(arr[1] == 4);
    }
}
