contract Godchild {
    address beneficiary;
    uint birthday;
	address public owner; // this is the godparent
	string message; // expensive!
	
    modifier onlyBeneficiary {if (msg.sender != beneficiary) throw; _}    
    modifier onlyOwner {if (msg.sender != owner) throw; _} 
    
    function Godchild(string _message, address _beneficiary) {
		owner = msg.sender;
		message = _message;
		beneficiary = _beneficiary;
	}
    
    event ShowMessage(string _message);
    
	function payout() onlyBeneficiary {
        if (birthday + 18 years < now) {
            throw;
        } else {
		    msg.sender.send(this.balance);
		    ShowMessage(message);
        }
	}
	
	function safetyPayout() onlyOwner {
        if (birthday + 28 years < now) {
            throw;
        } else {
		    msg.sender.send(this.balance);
		    ShowMessage(message);
        }
	}	
	
  	function getBalance() returns(uint) {
    	return this.balance;
  	}
}
