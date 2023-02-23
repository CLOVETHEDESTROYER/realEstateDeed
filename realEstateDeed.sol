//SPDX-License-Identifier: NONE

pragma solidity ^0.8.0;

contract RealEstateDeed {
    // Declare public variables for the property owner and the property description
    address public owner;
    string public description;

    // Declare an event to emit when the property owner changes
    event OwnerChanged(address newOwner);

    // Declare a constructor function that sets the initial owner and description of the property
    constructor(address _owner, string memory _description) {
        owner = _owner;
        description = _description;
    }

    // Declare a function to allow the current owner to transfer ownership of the property to a new owner
    function transferOwnership(address newOwner) public {
        // Check that the caller of the function is the current owner
        require(msg.sender == owner, "Only the current owner can transfer ownership");

        // Set the new owner and emit an event
        owner = newOwner;
        emit OwnerChanged(newOwner);
    }
}
