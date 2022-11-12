pragma solidity ^0.4.0;

contract AnotherGreatContract {
// block is a block of information in the Ethereum 
block.number;  // number of the block
block.difficulty; // difficulty of the block
block.coinbase(); // miner's address

//message
msg.sender // sender
msg.value // what's in the message
msg.data // data

//transaction
tx.origin // once transaction is done, you have access for this info
}