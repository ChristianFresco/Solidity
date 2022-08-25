pragma solidity ^0.8.7;
// SPDX-License-Identifier: MIT

contract MarkProduct { // 
    
    struct StorageInformation {
        string MessageFromBlockChain;
    }

    StorageInformation[] public ReadBlockChain;
    address owner;
    
    constructor()  {
        owner = msg.sender; // store information who deployed contract
        }
    

    modifier ControlOwner() {
        require(msg.sender == owner, "Only owner can withdraw");
        _; 
    }


    function InsertData (string memory MessageFromBlockChain) public ControlOwner { 
        ReadBlockChain.push(StorageInformation(MessageFromBlockChain));
    }        
}