/// ============================================================================
/// `VotingMachine` contract - basic setup
/// ============================================================================
using VotingStrategyHarness as _VotingStrategy;


methods
{
    // `VotingMachine` =========================================================
    function getUserProposalVote(
        address, uint256
    ) external returns (IVotingMachineWithProofs.Vote) envfree;

    function getProposalById(
        uint256
    ) external returns (IVotingMachineWithProofs.ProposalWithoutVotes) envfree;

    function getProposalVoteConfiguration(
        uint256
    ) external returns (IVotingMachineWithProofs.ProposalVoteConfiguration) envfree;

    function getIdOfProposal(uint256) external returns (uint256) envfree;

    // `VotingStrategy` ========================================================
    function VotingStrategyHarness.is_hasRequiredRoots(
        bytes32
    ) external returns (bool) envfree;

    // `getVotingPower` is summarized since it uses bitwise operations and retrieves
    // data from slots. We use a wildcard since it is called as:
    // `IVotingStrategy(address(VOTING_STRATEGY)).getVotingPower`
    function _.getVotingPower(
        address asset,
        uint128 baseStorageSlot,
        uint256 power,
        bytes32 blockHash
    ) external => NONDET;
  
    // `DataWarehouse` =========================================================
    // Summarized since it retrieves data from slots
    function DataWarehouse.getStorage(
        address account,
        bytes32 blockHash,
        bytes32 slot,
        bytes storageProof
    ) external returns (StateProofVerifier.SlotValue) => NONDET;

    // `CrossChainController` ==================================================
    // NOTE: Not clear why this call is not resolved, we summarize it as `NONDET`
    // NOTE: Not a view method - not a safe summary! 20231120 Trying without
    //function CrossChainController.forwardMessage(
    //    uint256, address, uint256, bytes
    //) external returns (bytes32,bytes32) => NONDET;

    // `SlotUtils` =============================================================
    // Summarized for speed-up
    function SlotUtils.getAccountSlotHash(
        address, uint256
    ) internal returns (bytes32) => NONDET;
}

// setup self check - reachability of currentContract external functions
rule method_reachability {
  env e;
  calldataarg arg;
  method f;
  f(e, arg);
  satisfy true;
}


// Defines methods that usually must be filtered out from invariants and parametric rules
definition filteredMethods(method f) returns bool = (
    // Filtered due to unresolved call from `Address.sol` Line 136:
    // `target.call{value: value}(data)`
    f.selector != sig:CrossChainController.emergencyTokenTransfer(
        address, address, uint256
    ).selector &&

    // Filtered due to unresolved call from `CrossChainReceiver.sol` Line 231:
    // `IBaseReceiverPortal(envelope.destination).receiveCrossChainMessage(`
    // `   envelope.origin,envelope.originChainId,envelope.message`
    // `)`
    f.selector != sig:receiveCrossChainMessage(address,uint256,bytes).selector &&

    // Filtered due to unresolved call from `CrossChainReceiver.sol` Line 231: see above
    f.selector != sig:CrossChainController.deliverEnvelope(
        //uint256,address,address,uint256,uint256,bytes
        CrossChainController.Envelope
    ).selector &&

    // Filtered due to unresolved call from `Rescuable.sol` Line 3:
    // to.call{value: amount}(new bytes(0))
    f.selector != sig:CrossChainController.emergencyEtherTransfer(
        address,uint256
    ).selector
);
