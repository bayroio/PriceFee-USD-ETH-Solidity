/**
 * Using the ETH/USD Price Feed: https://feeds.chain.link/eth-usd
 */

pragma solidity ^0.6.7;

import "https://github.com/smartcontractkit/chainlink/evm-contracts/src/v0.6/interfaces/AggregatorInterface.sol";

contract PriceConsumer {

    AggregatorInterface internal priceFeed;

    /**
     * Network: Ropsten
     * Aggregator: ETH/USD
     * Address: 0x8468b2bDCE073A157E560AA4D9CcF6dB1DB98507
     */
    constructor() public {
        priceFeed = AggregatorInterface(0x8468b2bDCE073A157E560AA4D9CcF6dB1DB98507);
    }
  
    /**
     * Returns the latest price
     */
    function getLatestPrice() public view returns (int256) {
        return priceFeed.latestAnswer();
    }

    /**
     * Returns the timestamp of the latest price update
     */
    function getLatestPriceTimestamp() public view returns (uint256) {
        return priceFeed.latestTimestamp();
    }
}