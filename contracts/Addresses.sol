pragma solidity >=0.5.0 <0.6.0;

library Addresses {
    /**
     * Is Contract
     *
     * Check to see if the subject address is a contract on the Ethereum network
     *
     * @param _base The address on the network to check if it is a contract
     * @return bool Returns true if it is a valid contract
     */
    function isContract(address _base) internal view returns (bool _r) {
        assembly {
            _r := gt(extcodesize(_base), 0)
        }
    }
}
