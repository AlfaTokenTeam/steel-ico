pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Steel is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Steel(address _owner)  UpgradeableToken(_owner) {
    name = "Steel";
    symbol = "STE";
    totalSupply = 100000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}