pragma solidity ^0.4.18;

contract SCTFBank{
    event LogBalance(address addr, uint256 value);
    mapping (address => uint256) private balance;
    uint256 private donation_deposit;
		uint256 over;
    address private owner;
		bool locked;

    //constructor
    constructor() public{
        owner = msg.sender;
    }
    
    //logging balance of requested address
    function showBalance(address addr) public {
        emit LogBalance(addr, balance[addr]);
    }

    //withdraw my balance
    function withdraw(uint256 value) public{
				require(!locked);
				locked = true;

        require(balance[msg.sender] >= value);
        balance[msg.sender] -= value;
        msg.sender.transfer(value);

				locked = false;
    }
    
    //transfer my balance to other
    function transfer(address to, uint256 value) public {
				require(!locked);
				locked = true;

        require(balance[msg.sender] >= value);
        balance[msg.sender] -= value;
        balance[to]+=value;

				locked = false;
    }

    //transfer my balance to others
    function multiTransfer(address[] to_list, uint256 value) public {
				require(!locked);
				locked = true;

        require(balance[msg.sender] >= (value*to_list.length));
        balance[msg.sender] -= (value*to_list.length);
        for(uint256 i=0; i < to_list.length; i++){
						require(to_list[i] != msg.sender);//second one
            balance[to_list[i]] += value;
        }

				locked = false;
    }
    
    //donate my balance
    function donate(uint256 value) public {
				require(!locked);
				locked = true;

				require(balance[msg.sender] >= value);//first one
        balance[msg.sender] -= value;
        donation_deposit += value;

				locked = false;
    }

    //Only bank owner can deliver donations to anywhere he want.
    function deliver(address to) public {
				require(!locked);
				locked = true;

        require(tx.origin == owner);
				require(msg.sender == owner);// last one
        to.transfer(donation_deposit);
        donation_deposit = 0;

				locked = false;
    }
    
    //balance deposit, simple fallback function
    function () payable public {
				require(!locked);
				locked = true;

        balance[msg.sender]+=msg.value;

				locked = false;
   
 }
}
//END

