// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "./Foo.sol";
import "https://github.com/owner/repo/blob/branch/path/to/Contract.sol";

contract Import {
  // Initialize Foo.sol
  Foo public foo = new Foo();

  // Test Foo.sol by getting it's name.
  function getFooName() public view returns (string memory) {
    return foo.name();
  }
}