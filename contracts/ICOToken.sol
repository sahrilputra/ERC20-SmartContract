// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.13;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyICO is ERC20 {
    address public owner;
    uint256 public startTime;
    uint256 public constant SALE_DURATION = 1 days;

    constructor (uint256 _amount) ERC20("SahrilPutra", "ICO"){
        owner = msg.sender;
        startTime = block.timestamp;
        _mint(msg.sender, _amount);
    }

    function ownerMint(uint256 _amount) external {
        require(msg.sender == owner, "Not the owner");
       _mint(msg.sender, _amount);
    }

    // insert buyTokens() function
    function buyTokens(uint256 _amount) external payable {
    }
}
