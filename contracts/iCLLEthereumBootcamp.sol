// Inicio
//SPDX-License-Identifier: MIT
//At Address 0x1843EEc700fc61F722A0aab1d94293503d805289
pragma solidity 0.8.17;

struct NameStruct {
    address owner;
    address scName;
    string name;
}

interface iCLLEthereumBootcamp {
    function addName (address scNameAddress, string memory name) external returns (bool);
    function deleteName () external returns (bool);
    function existsOwner(address account) external view returns (bool);
    function getNameInfoByOwner (address account) external view returns (NameStruct memory);
    function bootcampInfo() external view returns (string memory);
}