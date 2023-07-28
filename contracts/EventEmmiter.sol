// SPDX-License-Indentifier: MIT
pragma solidity ^ 0.8.0;

contract EventEmitter {
    address public owner;

    event OwnerDidSomething(address ownerAdress, uint timesptamp);

    constructor() public {
        owner = msg.sender;
    }

    modifier onlyOwner () {
        require(msg.sender == owner, "Must be owner");
    }

    function doOwnerThing() public onlyOwner {
        emit OwnerDidSomething(owner,block.timestamp);
    }
}