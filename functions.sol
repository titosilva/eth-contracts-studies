// SPDX-License-Identifier: MIT
pragma solidity > 0.8.0;

// In solidity, functions have scopes and can be, or not,
// accessed outside of the contract

// Functions can be marked with "view" or "pure"
// https://www.geeksforgeeks.org/solidity-view-and-pure-functions/

contract LearnFunctions {
    // function <name>(<parameter-list>) <scope> returns(<return-type>) {
    //      <statements>;
    //} 

    // pure functions do not read or modify any state variables
    function add(uint a, uint b) public pure returns(uint) {
        return a + b;
    }

    function mul(uint a, uint b) public pure returns(uint) {
        uint result = a * b;
        return result;
    }

    uint c = 4; // state variable
    // view functions do not modify state variables, but can
    // read them
    function addC(uint a) public view returns (uint) {
        return a * c;
    }

    // State variable
    bool doorIsOpen = false;

    function getDoorState() public view returns (bool) {
        return doorIsOpen;
    }

    function sendControl(bool closeDoor) public returns(bool) {
        // All variables that we write here remain in the function (scoped)
        // More scoped variables can hide less scoped variables, but that
        // is not a good practice
        bool changed = false;

        if (doorIsOpen && closeDoor) {
            changed = true;
            doorIsOpen = false;
        } else if (!doorIsOpen && !closeDoor) {
            changed = true;
            doorIsOpen = true;
        }

        return changed;
    }
}