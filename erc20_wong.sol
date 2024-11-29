// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/access/Ownable.sol";

contract wongToken is ERC20, Ownable {
    string private constant _name = "wongToken";
    string private constant _symbol = "WTK";
    uint8 private constant _decimals = 18;
    uint256 private _initialSupply = 100 * 10**uint256(_decimals);

    constructor() ERC20(_name, _symbol) {
        // Mint initial supply to the contract deployer
        _mint(msg.sender, _initialSupply);
    }

    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }

    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }

    function getOwner() external view returns (address) {
        return owner(); // `owner()` is inherited from `Ownable`
    }

    function transfer(address recipient, uint256 amount) public override returns (bool) {
        require(recipient != address(0), "ERC20: transfer to the zero address");
        require(balanceOf(msg.sender) >= amount, "ERC20: transfer amount exceeds balance");

        _transfer(msg.sender, recipient, amount);
        return true;
    }
}
