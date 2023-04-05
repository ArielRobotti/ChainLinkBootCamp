// SPDX-License-Identifier: MIT
// address 0x3c1e48D47fd2FC171a02B1257624469d943d29E8
pragma solidity 0.5.2;

import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Mintable.sol';

contract Token is ERC20Mintable{
        string public name = "PiToken";
        string public symbol = "314";
        uint8 public decimals = 2;

        
}