// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;


contract VariableContract {
    uint public integerVariable;
    bool public booleanVariable;
    address public addressVariable;
    string public stringVariable;

    function setInteger(uint _value) public {
        integerVariable = _value;
    }

    function getInteger() public view returns (uint) {
        return integerVariable;
    }

    function setBoolean(bool _value) public {
        booleanVariable = _value;
    }

    function getBoolean() public view returns (bool) {
        return booleanVariable;
    }

    function setAddress(address _value) public {
        addressVariable = _value;
    }

    function getAddress() public view returns (address) {
        return addressVariable;
    }

    function setString(string memory _value) public {
        stringVariable = _value;
    }

    function getString() public view returns (string memory) {
        return stringVariable;
    }
}
