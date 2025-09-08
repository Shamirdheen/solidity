// SPDX-License-Identifier: MIT  // Most common for permissive open-source
pragma solidity ^0.8.0;
 
contract storedata {
    uint storedatas;
    function set(uint x) public{
        storedatas = x;
    }
    function get() public view returns (uint){
        return storedatas;
    }
    function increment(uint n) public{
        storedatas=storedatas + n;
    }
    function decrement(uint n) public{
        storedatas-=n;
    }
}
