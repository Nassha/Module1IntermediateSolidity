
const hre = require("hardhat");

async function main() { 
  await hre.run("compile");
  const ErrorTest = await hre.ethers.getContractFactory("ErrorTest");
  const errorChallenge = await ErrorTest.deploy();

  await errorChallenge.deployed();

  const transRemark= await errorChallenge.errorTest(6,3);
  const transRecieved=await transRemark.wait();


  console.log(
    "The current value: ",transRecieved.events[0].args.curr_number.toString()
  );
  console.log(
    "Error Message: ",transRecieved.events[0].args.error_mess.toString()
  )
}

// To use async/await everywhere and to properly handle errors
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
