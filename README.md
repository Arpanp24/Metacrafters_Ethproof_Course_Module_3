# MyToken Smart Contract

## Introduction

This is a simple Ethereum smart contract named `MyToken` that implements a basic token with minting and burning functionalities. It is written in Solidity version 0.8.18.

## Code Explanations

The smart contract contains the following key components:

- `tokenName` and `tokenSymbol`: These state variables represent the name and symbol of the token, respectively.

- `totalSupply`: This state variable tracks the total supply of the token.

- `balances`: A mapping that associates Ethereum addresses with their respective token balances.

- `mintTokens`: An external function that allows the creation (minting) of new tokens and assigns them to a specified address.

- `burn`: An external function that allows the burning (destruction) of tokens owned by the sender.

## Functionalities

### Minting Tokens

You can use the `mintTokens` function to create new tokens and assign them to a specific Ethereum address. This increases the total supply of the token.

```solidity
function mintTokens(address _to, uint256 _value) external {
    totalSupply += _value;
    balances[_to] += _value;
}
```

Burning Tokens
The burn function allows you to destroy a certain number of tokens from your own balance, provided you have a sufficient balance.

```solidity
function burn(uint256 _value) external {
    require(balances[msg.sender] >= _value, "Insufficient balance");
    totalSupply -= _value;
    balances[msg.sender] -= _value;
}
```

## Features
Simple and easy-to-understand implementation.
Minting and burning functionalities for managing token supply.

## Real-World Example
Here's a real-world example of how you might use the MyToken contract:

Suppose you are creating a loyalty program for your e-commerce platform. You can deploy the MyToken contract and use it to mint loyalty tokens to reward your customers for making purchases. Customers can then burn these tokens to redeem discounts or other benefits.



