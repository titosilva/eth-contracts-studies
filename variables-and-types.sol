// SPDX-License-Identifier: MIT
pragma solidity > 0.8.0;

// Variables are memory locations where to store values
// The more variable, more memory usage and higher cost

// Solidity is statically strongly-typed (everything has a specific type)
// https://docs.soliditylang.org/en/latest/types.html

contract LearnVariables {
    uint foodValue = 10;
    bool isSold = true;

    // Single or double quotations
    string foodName = "potato";
}

contract Exercise {
    int wallet = 500;
    bool spend = false;
    string notifySpend = 'You have spent money';
}