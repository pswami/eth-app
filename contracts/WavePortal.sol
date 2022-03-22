// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
  mapping(address => uint256) public waves;
  uint256 totalWaves;
  uint256 addressRegistryCount;

  constructor() {
      console.log("Yo yo, I am a contract and I am smart");
  }

  function wave() public {
      addressRegistryCount += 1;
      totalWaves += 1;
      console.log("%s has waved!", msg.sender);
  }

  function getTotalWaves() public view returns (uint256) {
      console.log("We have %d total waves!", totalWaves);
      return totalWaves;
  }

  function getTotalAddresses() public view returns (uint256) {
      console.log("We have %d total addresses!", addressRegistryCount);

      return addressRegistryCount;
  }
}