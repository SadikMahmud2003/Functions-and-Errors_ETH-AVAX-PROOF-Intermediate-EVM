// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*
    Smart Contract Project
    For this project, write a smart contract that implements the require(), assert() and revert() statements.
*/

contract DepartmentalStore {
    // State variable to store the owner of the store
    address public owner;

    // State variable to store the inventory of items
    mapping(string => uint) public inventory;

    // Constructor
    constructor() {
        owner = msg.sender;
    }

    // Function to add items to the inventory
    function addItem(string memory _itemName, uint _quantity) public {
        require(msg.sender == owner, "Only the owner can add items"); // require() statement
        require(_quantity > 0, "Quantity must be greater than 0"); // require() statement
        inventory[_itemName] = _quantity;
    }

    // Function to remove an item from the inventory
    function removeItem(string memory _itemName) public {
        if (inventory[_itemName] == 0) {
            revert("Product does not exist"); // revert() statement
        }
        require(msg.sender == owner, "Only the owner can remove items"); // require() statement
        // Remove the item
        delete inventory[_itemName];
    }

    // Function to purchase an item
    function purchaseItem(string memory _itemName, uint _quantity) public {
        require(inventory[_itemName] > 0, "Product does not exist"); // require() statement
        // Ensure there are enough items in stock
        require(inventory[_itemName] >= _quantity, "Not enough items in stock"); // require() statement
        require(_quantity > 0, "Quantity must be greater than 0"); // require() statement
        inventory[_itemName] -= _quantity;
    }

    // Function to check if the store has a certain item in stock
    function hasItem(string memory _itemName) public view returns (bool) {
        // Assert that the quantity is not negative
        assert(inventory[_itemName] >= 0); // assert() statement
        return inventory[_itemName] > 0;
    }
}
