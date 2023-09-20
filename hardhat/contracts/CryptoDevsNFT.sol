//SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";

contract CryptoDevsNFT is ERC721Enumerable {

    constructor()ERC721("CryptoDevs", "CD") {}

    function mint() public{
        _safeMint(msg.sender, totalSupply());}
}


// a simple contract derived from openzeppelin that 
//  allows anyone to mint an cryptodevs NFT
