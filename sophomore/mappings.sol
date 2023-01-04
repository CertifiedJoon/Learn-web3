// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Mapping {
  // mapping from address to uint
  mapping(address => uint) public myMap;

  function get(address _addr) public view returns (uint) {
    // Mapping always returns a value
    // If the value was never set, it will return the default value
    // The default value for uint is 0;
    return myMap[_addr];
  }

  function set(address _addr, uint _i) public {
    // Update the value at this address
    myMap[_addr] = _i;
  }

  function remove(address _addr) public {
    // Reset the value to the default value
    delete myMap[_addr];
  }
}

contract NestedMappings {
  mapping(address => mapping(uint => bool)) public nestedMap;

  function get(address _addr, uint _i) public view returns (bool) {
    return nestedMap[_addr][_i];
  }

  function set(address _addr, uint _i, bool _b) public {
    nestedMap[_addr][_i] = _b;
  }

  function remove(address _addr, uint _i) public {
    delete nestedMap[_addr][_i];
  }
}