// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Calculator {
    uint public result;

    // Function for addition
    function add(uint a, uint b) public returns (uint) {
        result = a + b;
        return result;
    }

    // Function for subtraction
    function sub(uint a, uint b) public returns (uint) {
        result = a - b;
        return result;
    }

    // Function for multiplication
    function mul(uint a, uint b) public returns (uint) {
        result = a * b;
        return result;
    }

    // Function for division
    function div(uint a, uint b) public returns (uint) {
        require(b != 0, "Cannot divide by zero");
        result = a / b;
        return result;
    }
}
