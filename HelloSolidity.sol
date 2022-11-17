//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HelloSolidity{  

    // smart contract name 

    string private hello_sol = "Hello Solidity!";  

    //string is a data type, private belongs only ot this contract

    function gethello_sol() public view returns (string memory){  

    //function has a name gethello_sol, public - anybody can call this message, view - doesn't touch the blockchain
    //when I call it, I am going to return a string from my local memory
    
        return hello_sol;
    }
}

