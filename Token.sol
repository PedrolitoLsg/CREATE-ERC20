pragma solidity ^0.8.10;

import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol';

contract Token is ERC20{
    address public admin:
    constructor() ERC20('Token', 'TKN') {
        _mint(msg.sender, 27000 * 10 **18);
        admin = msg.sender;
        }
    
    function mint(adress to, uint amount) external {
        require(msg.sender == admin, 'for admin only');
        _mint(to, amount);
    }

    function burn(uint amount) external {
        _burn(msg.sender, amount);
    }
}
