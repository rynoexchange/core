pragma solidity =0.5.16;
import './RynoPair.sol';

contract CalHash {
    function getInitHash() public pure returns(bytes32){
        bytes memory bytecode = type(RynoPair).creationCode;
        return keccak256(abi.encodePacked(bytecode));
    }

    function getChainId() public pure returns(uint) {
        uint chainId;
        assembly {
            chainId := chainid
        }

        return chainId;
    }
}
