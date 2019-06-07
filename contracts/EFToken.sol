pragma solidity ^0.5.0;

import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";

contract EFToken is ERC20, ERC20Detailed {
    uint constant _initial_supply = 179141000000000000000000000000;
    string public tokenName="Easy Feedback Token";
    string public tokenSymbol="EFT";
    uint8 public dec= 18;

    constructor() public ERC20Detailed(tokenName, tokenSymbol, dec)
    {
        _mint(msg.sender, _initial_supply);
    }
}