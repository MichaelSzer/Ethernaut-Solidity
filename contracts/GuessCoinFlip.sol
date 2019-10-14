pragma solidity ^0.4.18;

contract CoinFlip {
    function flip(bool _guess) public returns (bool) {
        return true;
    }
}

contract GuessCoinFlip {

    event CoinFlipResult(bool correct);

    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

    function MakeGuess(address _address) public {
        CoinFlip coinFlip = CoinFlip(_address);
        uint256 blockValue = uint256(block.blockhash(block.number - 1));
        uint256 coin = blockValue / FACTOR;

        bool side = coin == 1 ? true : false;

        bool result = coinFlip.flip(side);
        
        CoinFlipResult(result);
    }
}