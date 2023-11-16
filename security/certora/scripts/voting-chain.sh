

certoraRun --fe_version latest --send_only --disable_auto_cache_key_gen \
           security/certora/confs/voting/verifyLegality.conf \
           --rule createdVoteHasNonZeroHash \
           --msg "1: "
           
certoraRun --fe_version latest --send_only --disable_auto_cache_key_gen \
           security/certora/confs/voting/verifyLegality.conf \
           --rule onlyValidProposalCanChangeTally \
           --msg "2: "

certoraRun --fe_version latest --send_only --disable_auto_cache_key_gen \
           security/certora/confs/voting/verifyLegality.conf \
           --rule legalVote \
           --msg "3: "

certoraRun --fe_version latest --send_only --disable_auto_cache_key_gen \
           security/certora/confs/voting/verifyLegality.conf \
           --rule votedPowerIsImmutable method_reachability \
           --msg "4: "

certoraRun --fe_version latest --send_only --disable_auto_cache_key_gen \
           security/certora/confs/voting/verifyMisc.conf \
           --msg "5: "

certoraRun --fe_version latest --send_only --disable_auto_cache_key_gen \
           security/certora/confs/voting/verifyPower_summary.conf \
           --msg "6: "

certoraRun --fe_version latest --send_only --disable_auto_cache_key_gen \
           security/certora/confs/voting/verifyProposal_config.conf \
           --rule createdProposalHasRoots \
           --msg "7: "

certoraRun --fe_version latest --send_only --disable_auto_cache_key_gen \
           security/certora/confs/voting/verifyProposal_config.conf \
           --rule startedProposalHasConfig \
           --msg "8: "

certoraRun --fe_version latest --send_only --disable_auto_cache_key_gen \
           security/certora/confs/voting/verifyProposal_config.conf \
           --rule proposalHasNonzeroDuration configIsImmutable newProposalUnusedId method_reachability \
           --msg "9: "

certoraRun --fe_version latest --send_only --disable_auto_cache_key_gen \
           security/certora/confs/voting/verifyProposal_states.conf \
           --rule proposalImmutability \
           --msg "10: "

certoraRun --fe_version latest --send_only --disable_auto_cache_key_gen \
           security/certora/confs/voting/verifyProposal_states.conf \
           --rule startsStrictlyBeforeEnds \
           --msg "11: "

certoraRun --fe_version latest --send_only --disable_auto_cache_key_gen \
           security/certora/confs/voting/verifyProposal_states.conf \
           --rule startsBeforeEnds \
           --msg "12: "

certoraRun --fe_version latest --send_only --disable_auto_cache_key_gen \
           security/certora/confs/voting/verifyProposal_states.conf \
           --rule startedProposalHasConfig \
           --msg "13: "

certoraRun --fe_version latest --send_only --disable_auto_cache_key_gen \
           security/certora/confs/voting/verifyProposal_states.conf \
           --rule proposalMethodStateTransitionCompliance \
           --msg "14: "

certoraRun --fe_version latest --send_only --disable_auto_cache_key_gen \
           security/certora/confs/voting/verifyProposal_states.conf \
           --rule proposalIdIsImmutable proposalHasNonzeroDuration proposalTimeStateTransitionCompliance proposalLegalStates method_reachability \
           --msg "15: "

certoraRun --fe_version latest --send_only --disable_auto_cache_key_gen \
           security/certora/confs/voting/verifyVoting_and_tally.conf \
           --rule voteUpdatesTally \
           --msg "16: "

certoraRun --fe_version latest --send_only --disable_auto_cache_key_gen \
           security/certora/confs/voting/verifyVoting_and_tally.conf \
           --rule cannot_vote_twice_with_submitVoteSingleProofAsRepresentative_and_submitVote \
           --msg "17: "

certoraRun --fe_version latest --send_only --disable_auto_cache_key_gen \
           security/certora/confs/voting/verifyVoting_and_tally.conf \
           --rule voteTallyChangedOnlyByVoting onlyVoteCanChangeResult votingTallyCanOnlyIncrease strangerVoteUnchanged otherProposalUnchanged otherVoterUntouched cannot_vote_twice_with_submitVote_and_submitVoteAsRepresentative cannot_vote_twice_with_submitVoteAsRepresentative_and_submitVote method_reachability \
           --msg "18: "
