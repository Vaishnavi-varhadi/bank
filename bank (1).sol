// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


contract bank{

          address public  owner;
          uint public balance;
          


          constructor(){
              owner=msg.sender;
              balance=34;
          }
             

         modifier onlyOwner(){
            require(msg.sender==owner,"Only the owner can perform this operation");
            _;

         }
        
         function deposite(uint256 depositAmount) public onlyOwner{
           require(depositAmount>0,"Deposite amount must be greater than zero");
           balance=balance+depositAmount;
         }
         function withdraw(uint256 withdrawalAmount) public onlyOwner{
            
           require(withdrawalAmount>0,"withdrwal amout possible only when amount is greater than zero");
           require(withdrawalAmount<=balance,"withdrwal only possible for amount less than available amount in acccount");
           balance=balance-withdrawalAmount;
         }

         function getbalance() public view returns(uint256){
              return balance;
         }
}