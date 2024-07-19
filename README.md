### README for DegenToken Project

---

#### **Project Title**
DegenToken Solidity Smart Contract

#### **Description**
`DegenToken` is a Solidity smart contract that implements an ERC20 token with additional functionalities for purchasing laptops using the token. This contract allows users to buy virtual laptops with specific token values, track ownership of these laptops, and manage token balances through minting and burning. It is designed to simulate a token-based purchase system in a decentralized application (dApp).

---

#### **Getting Started**

##### **Installing**

1. **Clone the Repository:**
   ```sh
   git clone https://github.com/yourusername/DegenToken.git
   cd DegenToken
   ```

2. **Install Dependencies:**
   Ensure you have [Node.js](https://nodejs.org/) and [npm](https://www.npmjs.com/) installed. Then install Truffle and OpenZeppelin contracts:
   ```sh
   npm install -g truffle
   npm install @openzeppelin/contracts
   ```

##### **Executing Program**

1. **Open Remix IDE:**
   - Go to [Remix Ethereum IDE](https://remix.ethereum.org/).
   - Create a new file named `DegenToken.sol` and paste the contract code from the repository.

2. **Compile the Contract:**
   - In the Remix IDE, select the `DegenToken.sol` file.
   - Go to the "Solidity Compiler" tab and click "Compile DegenToken.sol".

3. **Deploy the Contract:**
   - Go to the "Deploy & Run Transactions" tab.
   - Ensure the environment is set to "JavaScript VM (London)".
   - Click "Deploy".

4. **Interact with the Contract:**
   - After deployment, the contract functions will appear in the "Deployed Contracts" section.
   - You can interact with functions such as `buyLaptop`, `getOwnedLaptops`, `mint`, `burn`, and `transfer` directly from the Remix interface.

   Example interactions:
   ```javascript
   // Mint tokens to an address
   await instance.mint("0xRecipientAddress", 1000);
   
   // Buy a laptop
   await instance.buyLaptop("Dell");
   
   // Check owned laptops
   let ownedLaptops = await instance.getOwnedLaptops("0xYourAddress", "Dell");
   
   // Transfer tokens
   await instance.transfer("0xRecipientAddress", 500);
   ```

##### **Help**
For common issues, ensure you have the correct versions of dependencies and the correct settings in the Remix IDE.

If you encounter issues, check:
- The Remix IDE documentation.
- OpenZeppelin Contracts documentation for details on ERC20 and Ownable.

For additional issues, consult the [Solidity documentation](https://docs.soliditylang.org/) or raise an issue on the project repository.

---

#### **Authors**

- **Zuphia Rosal**
  - Email: 202111617@fit.edu.ph

---

#### **License**
This project is licensed under the MIT License - see the LICENSE.md file for details.
