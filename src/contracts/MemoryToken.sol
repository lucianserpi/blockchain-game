// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./ERC721Full.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract MemoryToken is ERC721Full {
  using SafeMath for uint256;
  
  constructor() ERC721Full("Memory Non Fondable Token", "MNFT") {
  }

  function mint(address _to, string memory _tokenUri) public returns(bool) {
    uint _tokenId = totalSupply().add(1);
    _mint(_to, _tokenId);
    _setTokenURI(_tokenId, _tokenUri);
    return true;
  }
}
