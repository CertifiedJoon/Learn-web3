// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Modifiers {
  address public owner;

  constructor() {
    // Set the contract deployer as the owner of the contract
    owner = msg.sender;
  }


  // Create a modifier that only allows a function to be called by the owner
  modifier onlyOwner() {
    require(msg.sender == owner, "Your are not the owner");

    // Underscore is a special character used inside modifiers;
    // Which tells solidity to execute the funciton the modifier is used on
    // at this point
    // Therefore, this modifier will first perform the above check
    // Then run the rest of the code;
    _;
  }

  // Create a function and apply the onlyOwner modifier on it
  function changeOwner(address _newOwner) public onlyOwner {
    // We will only reach this point if the modifier succeeds with its checks
    // So the caller of this transaction must be the current owner
    owner = _newOwner;
  }
}