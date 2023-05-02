
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
