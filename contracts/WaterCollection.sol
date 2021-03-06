// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import '@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol';
import '@openzeppelin/contracts/token/ERC721/ERC721.sol';

contract WaterCollection is ERC721URIStorage {
  uint256 public tokenCounter;

  constructor() public ERC721('Water Collection', 'DRIP') {
    tokenCounter = 0;
  }

  function createToken(string memory tokenURI) public returns (bytes32) {
    require(tokenCounter < 100, 'Max number of tokens reached');
    uint256 tokenId = tokenCounter;
    _safeMint(msg.sender, tokenId);
    _setTokenURI(tokenId, tokenURI);
    tokenCounter++;
  }
}
