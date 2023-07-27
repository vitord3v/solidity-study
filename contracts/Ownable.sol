// SPDX-License-Indentifier: MIT.
pragma solidity > 0.8.0;

contract Ownable {
    address public owner;

    constructor() public {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "must be owner");
    }

    function doOwnerThing() public onlyOwner {
        
    }
}