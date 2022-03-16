//SPDX-License-Identifier:MIT

pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";

import "./BAT.sol";

contract StakingContract {

    IERC721 public BoredApesNFT;

    struct Stake {
    uint256 amount;
    uint256 timestamp;
    bool hasBAT;

    }

    //map staker address to stake details
    mapping(address => uint256) public stakingTime;

    //map staker address to stake details
    mapping(address => Stake) public stakes;
    
    mapping(address => bool) public ownsBAT;

    constructor() {
 BoredApesNFT = IERC721(0xbc4ca0eda7647a8ab7c2061c2e118a18a936f13d);
 
 }
  
  function stake( uint256 _amount) public {
      stakes[msg.sender] = Stake(_amount, block.timestamp);
      BoredApesNFT.safeTransferFrom(msg.sender, address(this), _amount, "0x00from");
  }

}

//built my erc20 token,
//give to anyone who calls it

//Staking contract
//accepts an erc20 token
//link my token to my staking contract
//people should have boredape NFT before they can stake my token - require and balance of
//when they stake, they earn 10% per month provided they staked for 3 days or more


