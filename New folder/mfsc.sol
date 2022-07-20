pragma solidity ^0.6.7;

contract MyFirstSmartContract{

    uint number;

    function changeNumber(uint256 _num) public {
        number = _num;  
    }

    function getNumber() public view returns (uint256){
        return number;
    }
    /*
    this is a contract
    */
}
