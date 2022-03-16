

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract BoredApeToken is ERC20 {
    constructor() ERC20("BoredApeToken", "BAT"){
        _mint(msg.sender, 1e18);
    }
}