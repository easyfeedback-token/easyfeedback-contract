pragma solidity ^0.6.2;

import "./ERC20Capped.sol";
import "./Ownable.sol";

contract EasyFeedBackToken is ERC20Capped, Ownable {
    constructor ()
    ERC20("EasyFeedBack", "EASYF")
    ERC20Capped(179141000000000000000000000000)
    public
    {
        // Mint 1% of total supply
        mint(msg.sender, 179141000000000000000000000000*1/100);
    }

    event Burned(address indexed burner, uint256 burnAmount);
    event Minted(
        address indexed minter,
        address indexed receiver,
        uint256 mintAmount
    );

    function mint(address _to, uint256 _amount) public onlyOwner {
        _mint(_to, _amount);
        emit Minted(owner(), _to, _amount);
    }

    function burn(uint256 _amount) public {
        _burn(msg.sender, _amount);
        emit Burned(msg.sender, _amount);
    }
}
