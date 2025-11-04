// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EmployeeDetails {
    struct Employee {
        uint id;
        string name;
        uint salary;
        string joiningDate;
    }

    Employee public emp;

    function setEmployee(uint _id, string memory _name, uint _salary, string memory _joiningDate) public {
        emp = Employee(_id, _name, _salary, _joiningDate);
    }

    function getEmployee() public view returns (uint, string memory, uint, string memory) {
        return (emp.id, emp.name, emp.salary, emp.joiningDate);
    }
}
