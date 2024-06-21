// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

/**
 * @title Here we introduce you to some primitive data types available in Solidity.
 * - boolean
 * - uint256
 * - int256
 * - address
 */
contract Primitives {
    bool public boo = true;

    /* 
    uint stands for unsigned integer, meaning non negative integers 
    different sizes are available
        uint8   ranges from 0 to 2 ** 8 - 1
        uint16  ranges from 0 to 2 ** 16 - 1
        ...
        uint256 ranges from 0 to 2 ** 256 - 1
    */
    uint8 public u8 = 1;
    uint256 public u256 = 1231231;
    uint public u256_alias = 1321312; // uint is an alias for uint256

    /*
    Negative numbers are allowed for int types.
    Like uint, different ranges are available from int8 to int256
    
    int256 ranges from -2 ** 255 to 2 ** 255 - 1
    int128 ranges from -2 ** 127 to 2 ** 127 - 1
    */
    int8 public i8 = -1;
    int256 public i256 = -12321;
    int public i256_alias = -123213123;

    // minimum and maximum of int
    int256 public minInt = type(int256).min; //-57896044618658097711785492504343953926634992332820282019728792003956564819968
    int256 public maxInt = type(int256).max; // 57896044618658097711785492504343953926634992332820282019728792003956564819967
    uint256 public maxUint = type(uint256).max; // 115792089237316195423570985008687907853269984665640564039457584007913129639935

    address public addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4; // 0x{40}

    /*
    In Solidity, the data type byte represent a sequence of bytes. 
    Solidity presents two type of bytes types :

     - fixed-sized byte arrays
     - dynamically-sized byte arrays.
     
     The term bytes in Solidity represents a dynamic array of bytes. 
     It’s a shorthand for byte[] .
    */
    bytes1 a = 0xb5; //  [10110101]
    bytes1 b = 0x56; //  [01010110]

    // Default values
    // Unassigned variables have a default value
    bool public defaultBoo; // false
    uint256 public defaultUint; // 0
    int256 public defaultInt; // 0
    address public defaultAddr; // 0x0000000000000000000000000000000000000000
}
