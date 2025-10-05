// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24; //solidity version
// int256 favoriteNumberInt = -88;
//     string favoriteNumberInText = "eighty eight";
//     address myAddress = 0xb419F711a7b4E43467bCDa4f438D878Fd708ab5F;
//     bytes32 favoriteBytes32 = "cat"; //0x3asewd24f
//  bool hasFavoriteNumber = false; //if no value then false
contract SimpleStorage {
    //Basic Types: boolean, uint, int, address, bytes  
    uint256 public myFavoriteNumber; // uint, uint256 both same if no value then 0
    //uint256[] listOfFavoriteNumbers; 

    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople;
    // Person public myFriend = Person({favoriteNumber: 7, name: "Pragyat"});

    mapping (string => uint256) public nameToFavouriteNumber;


    function store(uint256 _favoriteNumber) public virtual {
        myFavoriteNumber = _favoriteNumber;
    }
    
    function retrieve() public view returns(uint256){
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public  {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavouriteNumber[_name] = _favoriteNumber;
    }
}