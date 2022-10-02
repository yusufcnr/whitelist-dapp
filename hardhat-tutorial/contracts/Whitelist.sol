//SPDX-License-Identifier:Unlicense
pragma solidity ^0.8.9;
contract Whitelist{

    //max number of whitelisted addresses allowed
    uint public maxWhitelistedAddresses;
    //create mapping of whitelisted addresses 
    mapping(address => bool) public whitelistedAddresses;

    uint public numAddressesWhitelisted;

    constructor(uint _maxWhitelistAddresses) {
        maxWhitelistedAddresses = _maxWhitelistAddresses;
    } 

    function addAddressToWhitelist() public {
        require (!whitelistedAddresses[msg.sender], "Sender is already whitelisted!");
        require (numAddressesWhitelisted < maxWhitelistedAddresses, "List is full, sorry!");
        whitelistedAddresses[msg.sender] = true;
        numAddressesWhitelisted +=1;
    }



}