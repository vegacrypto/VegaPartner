// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import "erc721a/contracts/ERC721A.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ThirdPartNFT is ERC721A, Ownable {
    
    constructor(string memory _name, string memory _symbol) ERC721A(_name, _symbol) {}

    string private _baseUri;

    function mint(uint256 quantity) external payable onlyOwner {
        _mint(msg.sender, quantity);
    }

    function setBaseUri(string memory _uri) external onlyOwner {
        _baseUri = _uri;
    }

    function _baseURI() internal view virtual override returns (string memory) {
        return _baseUri;
    }

    receive() external virtual payable {}
}