// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract Struct{
    struct Car {
        string model;
        uint year;
        address owner;
    }
    Car public car;
    Car[] public cars;
    mapping (address=> Car[]) public carsbyOwner;

    function examples() external{
        //creating struct data
        Car memory toyota = Car({model:"toyota", year:1990, owner:msg.sender});
        Car memory mahindra = Car("mahindra",1977, msg.sender);
        Car memory tesla;
        tesla.model = "tesla";
        tesla.year = 1985;
        tesla.owner = msg.sender;

        //pushing the data in cars variable
        cars.push(toyota);
        cars.push(mahindra);
        cars.push(tesla);

        //accessing and modifying struct data
        Car storage _car=cars[0];
        _car.year = 1999;
        delete _car.owner;

        delete cars[1];

    }
}