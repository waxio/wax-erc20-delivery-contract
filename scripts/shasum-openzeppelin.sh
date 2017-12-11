#!/bin/bash

# Run a quick test to ensure that all OpenZeppelin contract
# files we are using match what is distributed through NPM.
sha256sum contracts/zeppelin-solidity/contracts/lifecycle/Pausable.sol node_modules/zeppelin-solidity/contracts/lifecycle/Pausable.sol
sha256sum contracts/zeppelin-solidity/contracts/math/SafeMath.sol node_modules/zeppelin-solidity/contracts/math/SafeMath.sol
sha256sum contracts/zeppelin-solidity/contracts/ownership/Ownable.sol node_modules/zeppelin-solidity/contracts/ownership/Ownable.sol
sha256sum contracts/zeppelin-solidity/contracts/token/BasicToken.sol node_modules/zeppelin-solidity/contracts/token/BasicToken.sol
sha256sum contracts/zeppelin-solidity/contracts/token/ERC20.sol node_modules/zeppelin-solidity/contracts/token/ERC20.sol
sha256sum contracts/zeppelin-solidity/contracts/token/ERC20Basic.sol node_modules/zeppelin-solidity/contracts/token/ERC20Basic.sol
sha256sum contracts/zeppelin-solidity/contracts/token/StandardToken.sol node_modules/zeppelin-solidity/contracts/token/StandardToken.sol
