pragma solidity ^0.6.12;

contract Deployer {
    address public a;
    function deploy(bytes memory bytecode,uint salt) internal returns (address){
        address addr;
      
        assembly {
          addr := create2(0, add(bytecode, 0x20), mload(bytecode), salt)
        }

        return addr;
    }
    
    function get(bytes memory code,uint salt)public {
        a=deploy(code,salt);
    }
}
