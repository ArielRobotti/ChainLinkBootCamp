//SPDX-License-Identifier: MIT
//0x3470d9865a0a2bC54a571e0a432912bFc477D38b
pragma solidity 0.8.17;
 
contract RegisterAccess {
        string[] private info;
        address public owner;
        mapping (address => bool) public whiteList;
 
        constructor() {
            owner = msg.sender;
            whiteList[msg.sender] = true;
        }
 
        event InfoChange(string oldInfo, string newInfo);
   
        modifier onlyOwner {
            require(msg.sender == owner,"Only owner");
            _;
        }
 
        modifier onlyWhitelist {
            require(whiteList[msg.sender] == true, "Only whitelist");
            _;
        }
 
        function getInfo(uint index) public view returns (string memory) {
            return info[index];
        }
 
        function setInfo(uint index, string memory _info) public onlyWhitelist {
            emit InfoChange (info[index], _info);
            info[index] = _info;
        }
   
        function addInfo(string memory _info) public onlyWhitelist returns (uint index) {
            info.push (_info);
            index = info.length -1;
        }
     
        function listInfo() public view returns (string[] memory) {
            return info;
        }
 
        function addMember (address _member) public onlyOwner {        
            whiteList[_member] = true;
        }
   
        function delMember (address _member) public onlyOwner {
            whiteList[_member] = false;
        }
        function resetInfo()public onlyOwner{
            delete info;
        }
}