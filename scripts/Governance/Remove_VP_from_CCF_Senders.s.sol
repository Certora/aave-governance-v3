// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import {BaseRemoveCCFApprovedSenders} from 'adi-deploy/scripts/ccc/Remove_CCF_Approved_Senders.s.sol';
import '../GovBaseScript.sol';

abstract contract BaseRemoveVPAsCCFSender is BaseRemoveCCFApprovedSenders {
  function getSendersToRemove()
    public
    view
    override
    returns (address[] memory)
  {
    GovDeployerHelpers.Addresses memory govAddresses = GovDeployerHelpers
      .getAddresses(TRANSACTION_NETWORK(), vm);

    address[] memory sendersToRemove = new address[](2);
    sendersToRemove[0] = govAddresses.votingPortal_Eth_Eth;
    sendersToRemove[1] = govAddresses.votingPortal_Eth_Avax;

    return sendersToRemove;
  }
}

contract Ethereum is BaseRemoveVPAsCCFSender {
  function TRANSACTION_NETWORK() internal pure override returns (uint256) {
    return ChainIds.ETHEREUM;
  }
}

contract Ethereum_testnet is BaseRemoveVPAsCCFSender {
  function TRANSACTION_NETWORK() internal pure override returns (uint256) {
    return TestNetChainIds.ETHEREUM_SEPOLIA;
  }
}
