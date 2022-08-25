// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.6;

contract TestContract {

    mapping (address => uint) private cashHist;
    address private owner;

    constructor () {
        owner = msg.sender;
    }

    function getContractBalance() view public returns(uint) {
        return address(this).balance;
    }

    function getOwner() view public returns(address) {
        return owner;
    }

    function getOwnerBalance() view public returns(uint) {
        return owner.balance;
    }

    function pay() public payable {
        cashHist[msg.sender] += msg.value;
    }

    function tranferToOwner() public {
        payable(owner).transfer(address(this).balance);
    }

    function viewingPaymants(address _address) view public returns(uint) {
        return cashHist[_address];
    }
}