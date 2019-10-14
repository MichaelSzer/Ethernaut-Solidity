pragma solidity ^0.4.18;

contract DelegateFunctions {

    uint A;

    function resetA() public {
        A = 0;
    }

    function setA(uint val) public {
        A = val;
    }
}

contract DelegateCalls {
    int public A;
    DelegateFunctions contractDelegation;

    function DelegateCalls() public {
        contractDelegation = new DelegateFunctions();
    }

    function() public {
        require(contractDelegation.delegatecall(msg.data));
    }
}