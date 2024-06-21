// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
 * @title Maps are created with the syntax mapping(keyType => valueType)
 * the keyType can be any built-in value type， bytes, string or uint...
 * the valueType can be any type include another mapping or an array
 * Mappings are not iterable.
 * @author Carl Fu
 */
contract Mapping {
    // Mapping from address to uint
    mapping(address => uint256) private myMap;

    function get(address _addr) public view returns (uint256) {
        return myMap[_addr];
    }

    function set(address _addr, uint256 _num) public {
        myMap[_addr] = _num;
    }

    function remove(address _addr) public {
        delete myMap[_addr];
    }
}
