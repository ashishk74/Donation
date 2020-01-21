pragma solidity ^0.5.0;

contract Donation {
    
    address public Trioms; //admin
    address payable public donatur;
    address payable public donatee;
    uint256 public money;
    string public useless_variable;
    
    constructor () public {
        Trioms = msg.sender;
        useless_variable = "Donation String";
    }
    
    function change_useless_variable (string memory _param) public {
        useless_variable = _param;
    }
    
    function donate (address _donatee) public payable {
        
        donatur = msg.sender;
        money = msg.value;
        donatee = _donatee;
    }
    
    function receive_donation () public {
        donatee.transfer(address(this).balance);
        
    }
}