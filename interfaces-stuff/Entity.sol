// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.7.0 <0.9.0;

import "./IEntity.sol";

contract Entity is IEntity {
    uint256 number;

    function changeNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function add(uint256 x, uint256 y) public pure returns (uint256) {
        return x + y;
    }
}
