// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArraySum {
    uint256[] public numbers;  // Dynamic array to store numbers
    uint256 public totalSum;   // To store addition of elements

    // a) Accept array elements (one by one)
    function addNumber(uint256 num) public {
        numbers.push(num);
        totalSum += num; // Keep running total
    }

    // b) Display all array elements
    function getNumbers() public view returns (uint256[] memory) {
        return numbers;
    }

    // c) Find addition of all array elements (can be called anytime)
    function getSum() public view returns (uint256) {
        return totalSum;
    }
}
