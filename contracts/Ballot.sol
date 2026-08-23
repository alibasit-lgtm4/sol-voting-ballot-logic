// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Ballot {
    struct Voter {
        uint weight;
        bool voted;
        address delegate;
        uint vote;
    }
    
    mapping(address => Voter) public voters;
    address public chairperson;
    
    constructor() {
        chairperson = msg.sender;
        voters[chairperson].weight = 1;
    }
}
