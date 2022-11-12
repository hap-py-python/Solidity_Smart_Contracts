pragma solidity ^0.4.0;

contract MyContract {

    // ether, sazbo, finney, wei are units and you can not use them as variables

    bool isEqual = (1 ether == 5000 finney);

    // seconds, minutes, hours, days, weeks are time units

    bool isTime = (1 hours == 60 seconds); // even when you have one hour, it still plural

}