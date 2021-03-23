// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TestERC20 is ERC20 {
    constructor(
        uint256 _initialSupply,
        string memory _tokenName,
        string memory _tokenSymbol
    )
        public
        ERC20(
            _tokenName,
            _tokenSymbol
        )
    {
        _mint(msg.sender, _initialSupply);
    }

    function mint(
        address _account,
        uint256 _amount
    )
        public
    {
        _mint(_account, _amount);
    }

    function burn(
        address _account,
        uint256 _amount
    )
        public
    {
        _burn(_account, _amount);
    }
}