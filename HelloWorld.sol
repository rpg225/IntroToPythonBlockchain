// SPDX-License-Identifer: unlicensed

pragma solidity ^0.8.4;

contract HelloWorld {
    address owner;
    string greeting = "Hello World";

    function HelloWorld () public {
        owner = msg.sender;
    }
    function greet () constant public returns (string) {
        return greeting;
    }
    function kill () public {
        require(owner == msg.sender);
        selfdestruct(owner);
    }
}