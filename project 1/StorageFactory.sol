// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {SimpleStorage} from "./SimpleStorage.sol";


contract StorageFactory{
    // uint256 public favoriteNumber
    SimpleStorage[] public listOfSimpleStorage;
    function createSimpleStorageContract() public {
        SimpleStorage newSimpleStorageConract = new SimpleStorage();
        listOfSimpleStorage.push(newSimpleStorageConract);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        // Address
        // ABI - Application Binary Interface
        listOfSimpleStorage[_simpleStorageIndex].store(_newSimpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
        return listOfSimpleStorage[_simpleStorageIndex].retrieve();
    }
}