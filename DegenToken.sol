// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts@4.9.0/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@4.9.0/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {

    mapping(string => uint256) public laptopPrices;
    mapping(address => mapping(string => uint256)) public ownedLaptops;

    event LaptopPurchased(address indexed buyer, string laptopType);

    constructor() ERC20("Degen", "DGN") {
        // Initialize laptop prices
        laptopPrices["Dell"] = 65000;
        laptopPrices["HP"] = 40000;
        laptopPrices["Lenovo"] = 53000;
        laptopPrices["Acer"] = 32000;
    }

    function buyLaptop(string memory laptopType) public {
        require(laptopPrices[laptopType] > 0, "Invalid laptop type");
        require(balanceOf(msg.sender) >= laptopPrices[laptopType], "Insufficient DGN balance");

        _transfer(msg.sender, address(this), laptopPrices[laptopType]);
        ownedLaptops[msg.sender][laptopType] += 1; // Increment owned laptop
        emit LaptopPurchased(msg.sender, laptopType);
    }

    function getOwnedLaptops(address owner, string memory laptopType) public view returns (uint256) {
        return ownedLaptops[owner][laptopType];
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    function transfer(address to, uint256 amount) public override returns (bool) {
        _transfer(msg.sender, to, amount);
        return true;
    }
}
