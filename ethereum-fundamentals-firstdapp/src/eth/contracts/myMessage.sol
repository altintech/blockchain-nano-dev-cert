pragma solidity ^0.8.13;

contract Message {
    string myMessage;

    function setMessage(string x) public {
        myMessage = x;
    }

    function getMessage() public view returns (string) {
        return myMessage;
    }
}