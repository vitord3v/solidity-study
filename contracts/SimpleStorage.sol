// SPDX-License-Identifier: MIT
pragma solidity >= 0.4.22 < 0.9.0;

contract SimpleStorage {
    uint storedNumber;
    string storedString;

    function setNumber(uint _number) public {
        storedNumber = _number;
    }

    function getNumber() public view returns (uint) {
        return storedNumber;
    }

    function setString(string memory _string) public {
        storedString = _string;
    }

    function getString() public view returns (string memory) {
        return storedString;
    }
}