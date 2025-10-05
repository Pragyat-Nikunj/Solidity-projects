## 🧠 Solidity Projects

A collection of **Solidity smart contracts** demonstrating core concepts, patterns, and utilities for on-chain development and experimentation.

-----

## 🚀 Overview

This repository includes several Solidity contracts and helper libraries designed for learning and exploration. All contracts target **Solidity 0.8.x** and are meant for **educational purposes**.

| Contract | Description | Core Concepts |
| :--- | :--- | :--- |
| **`FallbackExample.sol`** | Demonstrates `fallback` and `receive` functions. | Low-level ETH transfers |
| **`FundMe.sol`** | A simple crowdfunding / donation contract. | Payable, Ownership, Oracles |
| **`PriceConverter.sol`** | Utility for converting ETH $\leftrightarrow$ USD using oracle data. | External Calls, Price Feeds |
| **`SafeMathTester.sol`** | Demonstrates safe arithmetic operations. | Checked Math, Overflow Prevention |
| **`project 1/`** | SimpleStorage project using fundamentals. | Storage, State Variables |

-----

## 📂 Folder Structure

```
/
├── project 1/
├── FallbackExample.sol
├── FundMe.sol
├── PriceConverter.sol
├── SafeMathTester.sol
└── .gitignore
```

-----

## 📄 Contract Descriptions

### `FallbackExample.sol`

  - Shows how **`fallback()`** and **`receive()`** work in Solidity.
  - Handles:
      - Ether transfers without calldata (via `receive`).
      - Calls where no matching function exists (via `fallback`).
  - Useful for understanding how contracts respond to raw ETH transfers.

### `FundMe.sol`

  - A **crowdfunding contract** where users can send funds and the owner can withdraw.
  - **Integrates `PriceConverter`** to enforce minimum funding amounts in USD terms.
  - Demonstrates ownership, `payable` functions, and external price feed usage.

### `PriceConverter.sol`

  - Provides **ETH $\leftrightarrow$ USD conversion** using external oracles (e.g., Chainlink).
  - Essential utility for contracts, like `FundMe`, that depend on real-world pricing to determine transaction value.

### `SafeMathTester.sol`

  - Demonstrates arithmetic operations and behaviors to prevent overflow/underflow.
  - While Solidity 0.8+ includes checked math, this contract illustrates explicit patterns and testing for robust development.

-----

## 🧪 How to Use / Test

1.  **Clone the Repository**
    ```bash
    git clone https://github.com/Pragyat-Nikunj/Solidity-projects.git
    cd Solidity-projects
    ```
2.  **Compile and Deploy**
    Use any preferred framework or IDE:
      * [Remix IDE](https://remix.ethereum.org/)
      * **Hardhat**
      * **Foundry**
      * Truffle
3.  **Interact**
      * Send ETH to **`FallbackExample`** (with or without calldata).
      * Use `fund()` in **`FundMe`** to contribute; use `withdraw()` as the owner.
      * Check ETH $\leftrightarrow$ USD conversions via **`PriceConverter`**.
      * Test safe math behaviors using **`SafeMathTester`**.

-----

## 🌐 Deployed FundMe on zkSync Era (Sepolia Testnet)

The **FundMe** contract is deployed and live on the **zkSync Era Sepolia testnet**\!

### Contract Details

| Field | Value |
| :--- | :--- |
| **Contract Address** | `0x0C8A979BF429E6A6724436FDaF03dadE1a8a6901` |
| **Explorer Link** | [zkSync Sepolia Explorer – FundMe Contract](https://sepolia.explorer.zksync.io/address/0x0C8A979BF429E6A6724436FDaF03dadE1a8a6901) |

### ✅ How to Interact

  * Connect your wallet (e.g., MetaMask) to the **zkSync Era Sepolia** network.
  * Use the **FundMe ABI** with tools like Remix, Hardhat console, or a custom Web3 dApp.
  * **Call Functions:**
      * `fund()` $\rightarrow$ to send ETH (contribute funds).
      * `withdraw()` $\rightarrow$ only callable by the contract owner to collect funds.
  * Monitor all transactions and balances using the provided block explorer link.
