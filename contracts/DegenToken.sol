// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenGamingToken is ERC20, Ownable {
    // Constructor to initialize the token
    constructor(address initialOwner) ERC20("Degen Gaming Token", "DGT") Ownable(initialOwner) {
        transferOwnership(initialOwner);
    }

    // Minting function: Only owner can mint tokens
    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }

    // Redeeming tokens (logic for redeeming can vary based on game logic)
    // Here we simply emit an event to signify a redemption.
    event TokensRedeemed(address indexed player, uint256 amount);

    function redeem(uint256 amount) external {
        require(balanceOf(msg.sender) >= amount, "Insufficient balance to redeem.");
        _burn(msg.sender, amount);
        emit TokensRedeemed(msg.sender, amount);
        // Additional logic for redeeming items can be added here.
    }

    // Burning tokens: Any user can burn their own tokens
    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }

    // Checking token balance is already provided by ERC20 with balanceOf(address).
}
