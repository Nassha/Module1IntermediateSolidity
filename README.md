# Module 1 Intermediate Solidity
# Error Handling

This Solidity program is a simple program that demonstrates a smart contract that implements require, assert and revert statements.

## Description

This program contains a simple contract written in Solidity and also a javascript file for passing inputs. The solidity file contains different conditons for triggering require, assert, and revert statements. This also include usage of events and throwing events using the emit statement to display to the users when no errors occured.

## Getting Started

### Executing program

To run this program, you can use Visual Studio Code and Hardhat to connect Javascript and Solidity programs.


```javascript

pragma solidity ^0.8.13;
import "hardhat/console.sol";

contract ErrorTest {

    uint public number;
    event display_num(uint indexed curr_number,string error_mess);

   function errorTest (uint input_val, uint error) public{
       if (error == 0){
           require(input_val >= 50,"Input should be greater than or equal to 50"); // require is usually used to validate inputs, conditions, and return values
           emit display_num(input_val,"There's no error");

       }else if(error == 1){
           assert(input_val == 0);  // assert is used to test for internal errors and to check invariants
           emit display_num(input_val,"There's no error");
       }
       else{
           if (input_val <= 5) {
            revert("The input must be greater than 5"); // revert is used to flag an error and revert the current call
        }
        emit display_num(input_val,"There's no error");
       }
   } 
}

```
To execute the given files, enter npx hardhat run scripts/deploy.js in your designated termninal.

## Authors

Nathalie


