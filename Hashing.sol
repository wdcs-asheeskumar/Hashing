// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Hashing {
    function setHashing1(
        string memory _str1,
        string memory _str2,
        string memory _str3,
        string memory _str4
    )
        public
        pure
        returns (
            bytes32,
            bytes32,
            bytes32,
            bytes32
        )
    {
        bytes32 b1 = keccak256(abi.encode(_str1, _str2));
        bytes32 b2 = keccak256(abi.encode(_str3, _str4));
        bytes32 b3 = keccak256(abi.encodePacked(_str1, _str2));
        bytes32 b4 = keccak256(abi.encodePacked(_str3, _str4));
        return (b1, b2, b3, b4);
    }
}
