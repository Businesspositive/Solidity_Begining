// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract Array {
    // creating a variable length array
    uint [] public nums=[1,2,3];
    // creating a fixed length array
    uint [3] public numFixed=[4,5,6];

    function examples() external {
        nums.push(4); //nums = [1,2,3,4]
        uint x = nums[1]; // x=2
        nums[2]=777; //nums = [1,2,777,4]
        delete nums[1]; //nums = [1,0,777,4]
        uint len = nums.length;

        //create an array in memory
        uint[] memory a= new uint[](5);
        a[1]=123;
    }

    function returnArray() external view returns (uint [] memory){
        return nums;
    }
}