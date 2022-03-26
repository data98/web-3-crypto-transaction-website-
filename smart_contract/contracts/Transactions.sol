// SPDX-License-Identifier: UNLICENSED

// In the code you'll see me commenting to memorize easier

// Choosing version
pragma solidity ^0.8.0; 

// One can look at this as a simple class in OOP
// Like in c++ you have to define a type for variable which can't be mutated 
contract Transactions {

    // Simple variable to hold number of transactions
    uint256 transactionCount;

    // Transfer function that I'm calling (emitting) later
    event Transfer(address from, address receiver, uint amount, string message, uint256 timestamp, string keyword);  
    
    // Bsically same as c++ structure
    struct TransferStruct {
        address sender;
        address receiver;
        uint amount;
        string message;
        uint256 timestamp;
        string keyword;
    }

    // Defining an array of TransferStruct called transactions 
    TransferStruct[] transactions;

    // Main function
    // "memory" identifies specific data stored in the memory of a transaction 
    function addToBlockchain(address payable receiver, uint amount, string memory message, string memory keyword) public {
        transactionCount += 1; // Incrementing counter

        // Store all transactions that come through it 
        // "msg" is something that you immediately get whenever you call a specific function in the blockchain
        transactions.push(TransferStruct(msg.sender, receiver, amount, message, block.timestamp, keyword));

        // Transfering the amount 
        emit Transfer(msg.sender, receiver, amount, message, block.timestamp, keyword);
    }

    // Simply returns transactions array
    function getAllTransactions() public view returns (TransferStruct[] memory) {
        return transactions;        
    }

    // Simply returns transaction counter
    function getTransactionCount() public view returns (uint256) {
        return transactionCount;        
    }

}