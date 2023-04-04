// SPDX-License-Identifier: GPL-3.0
// Deploy at address 0x99c39e4Fd02Ba0D705Fd8c781913aA6Cb35Bf762

pragma solidity >=0.8.0 <0.9.0;

contract Register{
    string private info;
    function getInfo()public view returns(string memory){
        return info;
    }
    function setInfo(string memory _info)public{
        info = _info;
    }
}