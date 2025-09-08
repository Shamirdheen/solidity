// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;
contract simplestorage{
    uint public storenumber;
    function set(uint _number)public{
        storenumber=_number;
    }
    function get() public view returns(uint){
        return storenumber;
    
    }
}
contract simplestring{
    string public storesstring;
    function set(string memory _str)public{
        storesstring=_str;
    }
    function get()public view returns(string memory){
        return storesstring;
    }
}
contract voting{
    mapping(string =>uint )public votes;
    mapping(address =>bool)public hasvoted;
    function vote(string memory candidate)public{
        require(!hasvoted[msg.sender],"already voted");
        votes[candidate]++;
        hasvoted[msg.sender]=true;

    }
}
contract counting{
    int public count=0;
    function increment()public{
        count+=1;
    }
    function decrement()public{
        count-=1;
    }
    function getcount()public view returns(int){

    }
}
contract counte{
    int public count=0;
    function increment()public{
        count=count+2;
    }
    function decrement()public{
        count=count-1;
    }
    function multiplication()public{
        count=count*2;
    }
    function division()public{
        count=count/2;
    }
    function getcount()public view returns(int){
        return count;
    }
}
contract oeven{
    function evenodd(uint num)public pure returns(bool){
        if (num%2==0){
            return true;

        }
        else {return false;}
    }
}
