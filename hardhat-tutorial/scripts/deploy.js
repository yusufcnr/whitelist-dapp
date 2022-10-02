// We require the Hardhat Runtime Environment explicitly here. This is optional
// but useful for running the script in a standalone fashion through `node <script>`.
//
// You can also run a script with `npx hardhat run <script>`. If you do that, Hardhat
// will compile your contracts, add the Hardhat Runtime Environment's members to the
// global scope, and execute the script.
const {ethers} = require("hardhat");
async function main() {
  const whitelistContract = await ethers.getContractFactory("Whitelist");
  const deployedWhitelistContract = await whitelistContract.deploy(10);
  await deployedWhitelistContract.deployed();
  console.log("Whiteslist contract address: ", deployedWhitelistContract.address);
}

main()
.then(() => process.exit(0))
.catch((err) => {
  console.log(err);
  process.exit(1);
});


