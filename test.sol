// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.6;

contract TestContract {

    address public contractAdress = address(this);
    address public owner; // адресс владельца
    mapping (address => uint) public payments;

    constructor() {
        owner = msg.sender;
    }

    function pay() public payable {    //можно посмотреть был ли осуществлён перевод
        payments[msg.sender] += msg.value;
    }

    function transferAll() public {
        address payable _to = payable(owner);
        _to.transfer(address(this).balance);
    }

    function contractBalance() public view returns(uint) {
        return address(this).balance;
    }
}