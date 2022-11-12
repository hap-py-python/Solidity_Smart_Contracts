// import solidity

pragma solidity ^0.4.0;

// import "filename";

contract MyContract {
    // state var
    uint first_data;

    // modifier is a conditional
    modifier data(){
        require(
            first_data >= 0
        );_;
    }
    //function
    function set(uint x) public {
        first_data = x;
    }
    //event
    event Sent(address from, address to, uint first_data);

}