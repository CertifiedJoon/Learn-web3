// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract ViewAndPure {
  uint public x = 1;

  // view function Promis not to modify the state (but can read state)
  function addToX(uint y) public view returns(uint) {
    return x + y;
  }

  // pure function Promise not to modify or read
  function add(uint i, uint j) public pure returns(uint) {
    return i + j;
  }
}