//SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract FakeNFTMarketplace {

    mapping(uint256 => address) public tokens;

    uint256 nftPrice = 0.1 ether;

    function purchase(uint256 _tokenId) external payable {
        require(msg.value == nftPrice, "This NFT costs 0.1 ether");
        tokens[_tokenId] = msg.sender;
    }

    function getPrice() external view returns(uint256) {
        return nftPrice;
    }

    function available(uint256 _tokenId) external view returns(bool) {
        if(tokens[_tokenId] == address(0)){
            return true;
        }
        return false;
    }
}

// The above contract creates a fake NFT marketplace with
//  a couple of very basic functions.

// It starts by mapping a tokenId to an address

// It spells out the price of one NFT

// The purchase function accepts the said price and assigns
//  an NFT to the caller address

// There is a getPrice function that views the nftPrice and
//  an available function that checks if the tokenId has been
//  sold or not


