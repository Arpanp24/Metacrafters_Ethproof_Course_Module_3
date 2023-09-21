//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract MyToken {

    // State variables
    string public tokenName = "Arpan";
    string public tokenSymbol = "abcd";
    uint256 public totalSupply = 0;

    // Mapping to track token balances
    mapping(address => uint256) public balances;

    function mintTokens(address _to, uint256 _value) external {
        totalSupply += _value;
        balances[_to] += _value;
    }

    // Burning function to destroy tokens
    function burn(uint256 _value) external {
        require(balances[msg.sender] >= _value, "Insufficient balance");
        totalSupply -= _value;
        balances[msg.sender] -= _value;
    }

}
