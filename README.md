# Metacrafters Project: Smart Contract for Departmental Store

This is a Solidity smart contract designed to demonstrate error handling using the require(), revert(), and assert() functions. It also includes functionality for setting and verifying the ownership of the contract.

## Overview

The DepartmentalStore smart contract is a Solidity contract designed to manage a simple departmental store's inventory. It demonstrates error handling mechanisms using require(), revert(), and assert() functions. The contract enables the owner to add and remove items from the inventory, customers to purchase items, and checks for item availability.

## Getting Started

### Requirements

- Solidity ^0.8.0
- Remix IDE (either in your browser or as a desktop application)

### Functions of the Contract

#### addItem(string memory _itemName, uint _quantity)

- Allows the owner to add items to the inventory.
- Requires the caller to be the owner and the quantity to be greater than 0.

#### removeItem(string memory _itemName)

- Allows the owner to remove items from the inventory.
- Reverts the transaction if the specified item does not exist or if the caller is not the owner.

#### purchaseItem(string memory _itemName, uint _quantity)

- Enables customers to purchase items from the store.
- Validates that the item exists, there are enough items in stock, and the quantity requested is positive.

#### hasItem(string memory _itemName) public view returns (bool)

- Checks if a certain item is available in the inventory.

## Installation and Usage

1. Copy the entire code into the Remix IDE.
2. Compile the contract using the Solidity compiler version ^0.8.0.
3. Deploy the contract.
4. Interact with the deployed contract using the provided functions to see the error handling in action.

## Example Interaction

1. The owner adds items to the inventory using the addItem function.
2. Customers purchase items from the store using the purchaseItem function.
3. The owner removes items from the inventory using the removeItem function.
4. The contract checks for item availability using the hasItem function.

## Author

- Sadik Mahmud
  - GitHub: @Sadik Mahmud [https://github.com/SadikMahmud2003]
  - LinkedIn: @Sadik Mahmud [www.linkedin.com/in/sadik-mahmud-49751b256]

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
