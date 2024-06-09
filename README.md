
# PramodToken

PramodToken is an ERC20-compliant token built on the Ethereum blockchain. This smart contract allows for the creation, minting, and burning of tokens, with administrative controls to manage certain functions.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Getting Started

These instructions will help you deploy and interact with the PramodToken contract.

### Prerequisites

- Node.js
- npm
- Truffle or Hardhat
- Ethereum Wallet (e.g., MetaMask)
- Solidity compiler ^0.8.0

### Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/yourusername/pramodtoken.git
    cd pramodtoken
    ```

2. Install dependencies:
    ```bash
    npm install
    ```

3. Compile the contract:
    ```bash
    truffle compile
    ```
    or if using Hardhat:
    ```bash
    npx hardhat compile
    ```

### Deployment

1. Deploy the contract to a local or test Ethereum network:
    ```bash
    truffle migrate
    ```
    or if using Hardhat:
    ```bash
    npx hardhat run scripts/deploy.js --network NETWORK_NAME
    ```

### Usage

Once deployed, you can interact with the contract using your Ethereum wallet or through a script.

#### Constructor

The contract's constructor initializes the token with a specified initial supply and sets the deploying address as the administrator.

```solidity
constructor(uint256 initialSupply) ERC20("Pramod", "Pramod") {
    _mint(msg.sender, initialSupply);
    administrator = msg.sender;
}
```

#### Mint Function

Allows the administrator to mint new tokens.

```solidity
function mint(address to, uint256 value) external onlyAdministrator {
    _mint(to, value);
}
```

#### Burn Function

Allows anyone to burn tokens from a specified address.

```solidity
function burn(address from, uint256 value) external {
    _burn(from, value);
}
```

#### Transfer Function

Overrides the ERC20 transfer function to allow token transfers.

```solidity
function transfer(address to, uint256 value) public override returns (bool) {
    _transfer(msg.sender, to, value);
    return true;
}
```

## Security

The contract uses a modifier to ensure only the administrator can call certain functions.

```solidity
modifier onlyAdministrator() {
    require(msg.sender == administrator, "Error: You are not the administrator");
    _;
}
```

## Built With

- [OpenZeppelin](https://openzeppelin.com/contracts/) - The standard for secure blockchain applications
- [Solidity](https://soliditylang.org/) - The smart contract programming language
- [Truffle](https://www.trufflesuite.com/) or [Hardhat](https://hardhat.org/) - Development environments

## Contributing

Feel free to submit issues or pull requests.

## Authors

- **Pramod Prajapat** - (https://github.com/pramodprajapatcse)

## Acknowledgments

- OpenZeppelin for their robust library of smart contracts
- Ethereum community for continuous support and development

---

By following the above instructions and understanding the provided contract, you should be able to deploy and interact with your own instance of the PramodToken on the Ethereum blockchain.
```
