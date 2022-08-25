const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("TestContract", function() {
    let acc1;
    let acc2;
    let payments;

    beforeEach(async function() {
        [acc1, acc2] = await ethers.getSigners(); // узнаём список аккаустов
        const Payments = await ethers.getContractFactory("TestContract", acc1);
        payments = await Payments.deploy(); // отправка транзакции
        await payments.deployed(); // выполнение транзакции
        console.log(payments.address);
    })

    it("should be deployed", async function() {
        console.log('success!');
    })
})


