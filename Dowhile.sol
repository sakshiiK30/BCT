// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PassMarks {
    uint256[10] public marks;  // fixed-size array for 10 students
    uint256 public count = 0;  // to keep track of how many marks stored

    // Function to add marks (only > 40 accepted)
    function addMarks(uint256[] memory inputMarks) public {
        uint256 i = 0;

        // do-while loop to process all input marks
        do {
            if (count >= 10) break; // stop if array full

            uint256 mark = inputMarks[i];

            if (mark > 40) {
                marks[count] = mark;
                count++;
            }

            i++;
        } while (i < inputMarks.length);
    }

    // View all accepted marks
    function getMarks() public view returns (uint256[10] memory) {
        return marks;
    }

    // View how many students have passed
    function getCount() public view returns (uint256) {
        return count;
    }
}
