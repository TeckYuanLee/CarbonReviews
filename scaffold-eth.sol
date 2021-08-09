pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";
//import "@openzeppelin/contracts/access/Ownable.sol"; //https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol

contract YourContract {

  event SetPurpose(address sender, string purpose);

  string public purpose = "Building Unstoppable Apps";
  mapping(address => uint256) public balanceOf;

  uint8 public counter = 5;

  function dec() public {
    require(counter > 0, "COUNTER IS ZERO");
    counter--;
  }

  constructor() {
    // what should we do on deploy?
    balanceOf[owner] = counter;
  }

  address public owner = 0xa8a69a507Cf45cF07047c4BE7731D35DFcC55f63;

  function setPurpose(string memory newPurpose) public payable {
      require(msg.value >= 0.1 ether, "NOT ENOUGH");
      purpose = newPurpose;
      console.log(msg.sender,"set purpose to",purpose);
      emit SetPurpose(msg.sender, purpose);
  }

  function withdraw() public {
    require(msg.sender == owner, "NOT THE OWNER");
    payable(msg.sender).transfer(address(this).balance);
  }

  /*mapping (address => string) public attestations;

  function attest(string memory hash) public {
    console.log(msg.sender, "attests to", hash);
    emit Attest(msg.sender, hash);
    attestations[msg.sender] = hash;
  }
  event Attest(address sender, string hash);*/
}

