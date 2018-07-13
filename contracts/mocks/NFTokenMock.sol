pragma solidity ^0.4.24;

import "../../contracts/tokens/NFToken.sol";
import "@0xcert/ethereum-utils/contracts/ownership/Ownable.sol";

/**
 * @dev This is an example contract implementation of NFToken.
 */
contract NFTokenMock is
  NFToken,
  Ownable
{

  /**
   * @dev Mints a new NFT.
   * @param _to The address that will own the minted NFT.
   * @param _tokenId of the NFT to be minted by the msg.sender.
   */
  function mint(
    address _to,
    uint256 _tokenId
  )
    onlyOwner
    external
  {
    super._mint(_to, _tokenId);
  }

  /**
   * @dev Removes a NFT from owner.
   * @param _tokenId Which NFT we want to remove.
   */
  function burn(
    uint256 _tokenId
  )
    onlyOwner
    external
  {
    super._burn(_tokenId);
  }

}
