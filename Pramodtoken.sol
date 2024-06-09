// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract PramodToken is ERC20 {
    address public administrator;

    constructor(uint256 initialSupply) ERC20("Pramod", "Pramod") {
        _mint(msg.sender, initialSupply);
        administrator = msg.sender;
    }

    modifier onlyAdministrator() {
        require(msg.sender == administrator, "Error: You are not the administrator");
        _;
    }

    function mint(address to, uint256 value) external onlyAdministrator {
        _mint(to, value);
    }

    function burn(address from, uint256 value) external {
        _burn(from, value);
    }

    function transfer(address to, uint256 value) public override returns (bool) {
        _transfer(msg.sender, to, value);
        return true;
    }
}

