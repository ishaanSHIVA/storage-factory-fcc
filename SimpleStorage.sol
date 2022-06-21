// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7 <0.9.0;


contract SimpleStorage {
    uint favouriteNumber;

    struct People {
        uint favNumber;
        string name;
    }

    mapping(string => uint256) public nameToFavNumber; 
    People[] public people;
    // uint256[] public favNumbers;

    function store(uint _favouriteNumber) public {
        favouriteNumber = _favouriteNumber;
        retrieve();
    }

    function retrieve() public view returns (uint) {
        return favouriteNumber;
    }

    function addPerson(string calldata _name,uint _favNumber) public {
        People memory person = People({
            favNumber:_favNumber,
            name:_name
        });
        people.push(person);
        nameToFavNumber[_name] = _favNumber;
    }
    

}