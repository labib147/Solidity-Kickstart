pragma solidity ^0.6.7;
 
contract MyFirstContract {
 
    uint256 number = 0;
 
    //Dynamic array (variable size)
    string[] names;
    
    function addName(string memory _name) public {
        names.push(_name);
    }
    
    /*
     Memory: We want to store it on the temporary memory of evm executing the smartContract
     Just the duration of the function execution
     We don't want to store it in persistant storage
    */
    
    function getName(uint _index) public view returns (string memory) {
        return names[_index];
    }
     
    function changeNumber(uint256 _num) public {
        number = _num;
    }
 
 
    function getNumber() public view returns (uint256){
        return number;
    }
}
