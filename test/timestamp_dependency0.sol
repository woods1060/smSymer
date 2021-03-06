pragma solidity >=0.4.25;

contract TimestampDependencyTest1{
    function guess_even_odd(uint256 choice, uint256 value) payable public returns (bool) {
        require(msg.value == value);
        require(choice>=0 && choice <=1);
        uint256 time = block.timestamp;
        if (time % 2 == choice){
            msg.sender.transfer(value * 2);
            return true;
        } else {
            return false;
        }
    }
}