// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.9;

contract Whitelist {
  // Max number of whitelisted addresses allowed
  uint8 public maxWhitelistedAddresses;

  // Create a mapping of whitelistedAddresses
  // if an address is whitelisted, we would set it to true,
  // it is false by default for all other addresses
  mapping (address => bool) public whitelistedAddresses;

  // numAddressesWhitelisted would be used to keep track of how many addresses
  // have been whitelisted.
  // NOTE: Don't change this variable name, as it willbe part of verification
  uint8 public numAddressesWhitelisted;

  // Setting the Max number of whitelisted allowed;
  // User will put the value at the time of deployment
  constructor (uint8 _maxWhitelistedAddresses) {
    maxWhitelistedAddresses = _maxWhitelistedAddresses;
  }

  /* 
    addAddressToWhitelist - this function adds the address of the sender to whitelist
  */
  function addAddressToWhitelist() public {
    require(!whitelistedAddresses[msg.sender], "Sender has already been whitelisted");
    require(numAddressesWhitelisted < maxWhitelistedAddresses, "More addresses can't be added. limit reached");

    whitelistedAddresses[msg.sender] = true;
    numAddressesWhitelisted += 1;
  }
}