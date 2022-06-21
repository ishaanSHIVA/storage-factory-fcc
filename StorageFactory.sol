// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "./SimpleStorage.sol";

contract SimpleFactory {
    SimpleStorage[] public factories;


    function createContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();              
        factories.push(simpleStorage);
    }

    function sfStore(uint _ssindex,uint ssNumber) public {
        SimpleStorage simpleStorage = SimpleStorage(factories[_ssindex]);
        simpleStorage.store(ssNumber);
    }

    function sfGet(uint _ssindex) public view returns(uint) {
        return  factories[_ssindex].retrieve();
    }
}