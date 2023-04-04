// SPDX-License-Identifier: GPL-3.0
//Deploy At Address 0x60a900cCEE44C966AD5cb4bB513b0f10EC46789c
//Deploy At Address 0x6A03557B826c059aEffB06B21d5EAdebF5EB9F76


pragma solidity >=0.8.0 <0.9.0;

contract NameContract{
    address public owner;
    string private name;

    constructor (string memory _name){
        owner = msg.sender;
        name = _name;
    }
    function getName()public view returns(string memory){
        return name;
    }

}