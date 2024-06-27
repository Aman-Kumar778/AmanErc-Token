# AmanEth- ERC20 Token

This project is all about creating our own ERC20 token using smart contrats and also deploy this on hardhat or remix. The contract to create this is already available in github - https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol

## Description

To build this token , first we need to import files form "openzeppelin" i.e the ERC20.sol file and all its other inherited contracts also. ERC20.sol already provides us to build our token easily as it comes with predefined function to use which are availabel in the standard ERC20 functions eg - transact(), balanceof(), approve() etc. The purpose of this program is to create your own ERC20 token and deploy it using REMIX . The contract has one modifier , one constructor amd two functions .Modifier is used for assuring that only contract owner can access the constructor and mint the tokens . The contract owner should be able to mint tokens to a provided address and any user should be able to burn and transfer tokens. Constructor is used to mint the tokens by the contract owner and functions are used to burn and transfer tokens.

## Getting Started


### Executing program

* To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a.sol extension (e.g., project.sol). Copy and paste the following code into the file:
```
code blocks for commands
```

## Help

Any advise for common problems or issues.
```

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
// import "./ERC20.sol"

contract Amantoken is ERC20 {
    address owner = msg.sender;

    modifier onlyOwner() {
        require(owner == msg.sender, "only owner can access");
        _;
    }

    constructor(string memory name, string memory symbol) ERC20(name, symbol)  {
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

```

In this contract, you can directly use the link which is imported for the ERC20.sol file and its dependencies or you can add those file by the github, i.e ERC20.sol , Context.sol , IERC20.sol . Because if u are using ERC20 then in the contract we have inherited the ERC20 contract , to use its funcitonalities directly . which also requires other contract to work with. 

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "Mtoken - project.sol" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling all the functions.

## Authors

Aman Kumar - student

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
