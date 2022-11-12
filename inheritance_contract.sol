pragma solidity ^0.4.0;


contract InheritanceContract {
    address owner;
    bool deceased;
    uint money;

    constructor() public payable {
        money = msg.value;
        owner = msg.sender;
        deceased = false;
    }

    modifier the_owner {
        require (msg.sender == owner);_; // we want to make sure that there is someone at the end of this message
    }

    modifier owner_deceased {
            require (deceased == true);_; // checking if person deceased before working on inheritance
     }


    
    address[] wallets;

    mapping (address => uint) inheritanceContract;

    function inhr(address _wallet, uint _the_inheritance) public the_owner{
        wallets.push(_wallet);
        inheritanceContract[_wallet] = _the_inheritance;

    }


    function paid() private owner_deceased { // if person is deceased make a transfer
        for (uint i = 0; 1 < wallets.length; i++) {
            wallets[i].transfer(inheritanceContract[wallets[i]]);
        }
    }

 function d() public the_owner {
     deceased = true;
     paid();
 }
 }