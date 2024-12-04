# Degen Gaming Token (DGT)

## Overview
The **Degen Gaming Token (DGT)** is a custom ERC-20 token built using Solidity, designed specifically for gaming applications. It is powered by OpenZeppelin's libraries for security and ease of use. The token provides functionalities such as minting, redeeming, and burning tokens, making it ideal for use in gaming ecosystems.

## Features
- **Minting**: The contract owner can mint new tokens to specified addresses.
- **Redeeming**: Users can redeem tokens, which involves burning tokens from their balance and triggering an event.
- **Burning**: Users can voluntarily burn tokens from their own balance.
- **Ownership**: Managed through OpenZeppelin's `Ownable` module.

## Prerequisites
To interact with this contract, you will need:
- A working knowledge of Solidity and Ethereum smart contracts.
- Node.js installed on your system.
- Truffle, Hardhat, or similar development tools for smart contracts.

## Deployment
### Steps to Deploy the Contract
1. Clone this repository.
2. Install dependencies:
   ```bash
   npm install
