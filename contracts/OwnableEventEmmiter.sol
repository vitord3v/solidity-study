// SPDX-License-Identifier: MIT
pragma solidity >= 0.4.22 < 0.9.0;

import "Ownable.sol";
import "./EventEmitter.sol";

contract OwnableEventEmmiter is Ownable, EventEmmite {
    function doOwnerThing() public onlyOwner {
        super.doOwnerThing();
        emit OwnerThing(owner, block.timestamp);
        
    }
}