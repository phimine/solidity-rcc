// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract NestedMapping {
    // Nested mapping (mapping from address to another mapping)
    mapping(address => mapping(uint256 => bool)) private nestMap;

    function get(address _addr, uint256 _num) public view returns (bool) {
        return nestMap[_addr][_num];
    }

    function set(address _addr, uint256 _num, bool _value) public {
        nestMap[_addr][_num] = _value;
    }

    function remove(address _addr, uint256 _num) public {
        delete nestMap[_addr][_num];
    }
}
