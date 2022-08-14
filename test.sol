// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.6;

contract TestContract {
    string private name;
    uint private age;

    function setName(string memory newName) public{
        name = newName;
    }

    function getName() view public returns(string memory) {
        return name;
    }

    function setAge(uint newAge) public{
        age = newAge;
    }

    function getAge() view public returns(uint) {
        return age;
    }
}