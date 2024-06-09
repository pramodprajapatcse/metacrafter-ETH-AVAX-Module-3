# PramodToken

Simple overview of use/purpose.

## Description

PramodToken is an ERC20-compliant token built on the Ethereum blockchain. This smart contract allows for the creation, minting, and burning of tokens, with administrative controls to manage certain functions. The primary use case is to provide a basic structure for token creation and management with an administrative layer for control.

## Getting Started

### Installing

* Clone the repository:
    ```bash
    git clone https://github.com/yourusername/pramodtoken.git
    cd pramodtoken
    ```

* Install dependencies:
    ```bash
    npm install
    ```

* Modify network configurations as needed in your Truffle or Hardhat configuration files to match your deployment environment.

### Executing program

* Compile the contract:
    ```bash
    truffle compile
    ```
    or if using Hardhat:
    ```bash
    npx hardhat compile
    ```

* Deploy the contract to a local or test Ethereum network:
    ```bash
    truffle migrate
    ```
    or if using Hardhat:
    ```bash
    npx hardhat run scripts/deploy.js --network NETWORK_NAME
    ```

* Interact with the deployed contract using your Ethereum wallet or through scripts.

## Help

For common problems or issues, refer to the following:

* Ensure your Ethereum wallet (e.g., MetaMask) is properly configured and connected to the correct network.
* Verify that the Solidity compiler version is set to ^0.8.0 in your configuration files.

```bash
truffle help
```

## Authors

Pramod Prajapat  


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
```
