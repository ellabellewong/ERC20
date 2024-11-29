# wongToken (WTK) - ERC20 Token Contract

`wongToken` is an ERC20 token implemented in Solidity with additional functionality to mint and burn tokens. It also has owner-controlled minting privileges using the `Ownable` contract from OpenZeppelin.

## Features

- **ERC20 Token**: Fully compliant with the ERC20 standard, meaning it can be integrated with decentralized applications (dApps), wallets, and exchanges that support ERC20 tokens.
- **Mintable Token**: The contract owner can mint new tokens to any address.
- **Burnable Token**: Users can burn their own tokens to reduce the total supply.
- **Owner Privileges**: Only the owner of the contract can mint new tokens.

## Contract Functions

### Constructor

The constructor sets the following properties:
- Token Name: `wongToken`
- Token Symbol: `WTK`
- Initial Supply: `100 WTK` (with 18 decimal places, equivalent to `100 * 10^18` tokens)
- The deployer’s address receives the initial supply of tokens.

### `mint(address to, uint256 amount)`

- **Description**: Allows the owner to mint new tokens and send them to a specified address.
- **Parameters**:
  - `to`: The address that will receive the minted tokens.
  - `amount`: The amount of tokens to mint.

- **Access Control**: Only the contract owner can call this function.

### `burn(uint256 amount)`

- **Description**: Allows the caller to burn (destroy) their own tokens, reducing the total supply.
- **Parameters**:
  - `amount`: The number of tokens to burn.
  
- **Access Control**: Any user can burn their own tokens (not the tokens of others).

### `getOwner()`

- **Description**: Returns the address of the current owner of the contract.
  
- **Access Control**: Publicly accessible.

**Ella Belle G. Wong
