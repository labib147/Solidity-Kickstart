pragma solidity ^0.6.7;


import "@chainlink/contracts/src/v0.6/interfaces/AggregatorV3Interface.sol";
 
contract PriceConsumerV3 {
 
    AggregatorV3Interface internal priceFeed;
 
    /**
     * Network: Kovan
     * Aggregator: ETH/USD
     * Address: 0x9326BFA02ADD2366b30bacB125260Af641031331
     */
    constructor() public {
        priceFeed = AggregatorV3Interface(0x9326BFA02ADD2366b30bacB125260Af641031331);
    }
    // Constructor only executes once during contract creation
    
    /* Needs to be deployed in Ethereum testnet because the imported chainlink does not know about your local machine so cannot deploy locally.
    Connect Metamask to Kovan testnet and use test ether to deploy on the Kovan testnet.    
    */
 
    /**
     * Returns the latest price
     */
    function getLatestPrice() public view returns (int) {
        (
            uint80 roundID, 
            int price,
            uint startedAt,
            uint timeStamp,
            uint80 answeredInRound
        ) = priceFeed.latestRoundData();
        return price;
    }
}
