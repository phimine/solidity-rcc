// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Function {
    // Functions can return multiple values.
    function returnMany() public pure returns (uint256, bool, string memory) {
        // reference type must be memory
        return (1, false, "Hello World!");
    }

    // Return values can be named.
    function returnWithName()
        public
        pure
        returns (uint256 x, bool y, string memory z)
    {
        return (1, false, "Hello World!");
    }

    // Return values can be assigned to their name.
    // In this case the return statement can be omitted.
    function returnByName()
        public
        pure
        returns (uint256 x, bool y, string memory z)
    {
        x = 1;
        y = false;
        z = "Hello World!";
    }

    // Use destructuring assignment when calling another
    // function that returns multiple values.
    function destructuringAssignments()
        public
        pure
        returns (uint256, bool, string memory, address, uint256)
    {
        (uint256 x, bool y, string memory z) = returnByName();
        (address a, uint256 b, ) = (
            0x1234560000000000000000000000000000000000,
            1,
            2
        );
        return (x, y, z, a, b);
    }

    // Cannot use map for either input or output
    // function testMap(
    //     mapping(uint256 => address) memory _map
    // ) public returns (mapping(address => uint) memory name) {}

    // Can use array for input
    // Can use array for output
    // MUST BE memory OR calldata
    function arrayInput(
        uint256[] memory arr
    ) public pure returns (uint256[] memory) {
        return arr;
    }

    // Call function with key-value inputs
    function someFuncWithManyInputs(
        uint256 x,
        uint256 y,
        uint256 z,
        address a,
        bool b,
        string memory c
    ) public pure returns (uint256) {}

    function callFunc() external pure returns (uint256) {
        return someFuncWithManyInputs(1, 2, 3, address(0), true, "c");
    }

    function callFuncWithKeyValue() external pure returns (uint256) {
        return
            someFuncWithManyInputs({
                x: 1,
                y: 2,
                z: 3,
                a: address(1),
                b: false,
                c: "Hello!"
            });
    }

    // View and Pure
    /**
     * View: function declares that no state will be changed.
     * Pure: function declares that no state variable will be changed or READ.
     */
    uint256 public num = 1;

    function testView(uint256 plus) public view returns (uint256) {
        return num + plus;
    }

    function testPure(
        uint256 _num,
        uint256 plus
    ) public pure returns (uint256) {
        return _num + plus;
    }
}
