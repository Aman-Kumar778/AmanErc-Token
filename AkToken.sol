// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "./ERC20.sol";

contract Amantoken is ERC20 {
    address owner = msg.sender;

    modifier onlyOwner() {
        require(owner == msg.sender, "only owner can access");
        _;
    } 

    constructor(string memory name, string memory symbol) ERC20(name, symbol) {
        // Mint 100 tokens to msg.sender
        // Similar to how
        // 1 dollar = 100 cents
        // 1 token = 1 * (10 ** decimals)

        _mint(msg.sender, 100 * 10 ** uint(decimals()));
    }

    function Ak_transfer(address add, uint256 value) external {
        _transfer(msg.sender, add, value);
    }

    function Ak_brun(address add, uint256 value) external {
        _burn(add, value);
    }
}
