// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import './lvl41.sol';
contract TelephoneAttack2 {

  TelephoneAttack public tp2 = TelephoneAttack(0xA70b379ABc735445A29e4990EBf5b1b2106B06CE);
  
  function t2() public {
      tp2.t1(msg.sender);
  }
}

