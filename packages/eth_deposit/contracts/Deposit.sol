pragma solidity ^0.7.0;


import "arb-shared-dependencies/contracts/Inbox.sol";

contract Deposit {

    IInbox public inbox;
    constructor( address _inbox) public  {
      
        inbox = IInbox(_inbox);
    }
   
    
    function depositEther(address _depositContract, uint256 _maxSubmissionCost ) public payable
    {   
        
        inbox.createRetryableTicket{value: msg.value}(_depositContract, 0, _maxSubmissionCost, msg.sender, msg.sender, 0, 0, '0x');       
    
    
    }
    
    
}
