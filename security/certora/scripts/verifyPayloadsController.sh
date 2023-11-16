
certoraRun --fe_version latest --send_only --disable_auto_cache_key_gen \
           security/certora/confs/payloads/verifyPayloadsController.conf \
           --rule payload_maximal_access_level_gt_action_access_level no_late_cancel state_cant_decrease no_transition_beyond_state_gt_3 no_transition_beyond_state_variable_gt_3 no_queue_after_expiration empty_actions_if_out_of_bound_payload expirationTime_equal_to_createAt_plus_EXPIRATION_DELAY empty_actions_iff_uninitialized null_access_level_if_out_of_bound_payload null_creator_and_zero_expiration_time_if_out_of_bound_payload empty_actions_only_if_uninitialized_payload executor_access_level_within_range consecutiveIDs empty_actions_if_uninitialized_payload queued_before_expiration_delay payload_grace_period_eq_global_grace_period null_access_level_only_if_out_of_bound_payload null_state_variable_if_out_of_bound_payload created_in_the_past executedAt_is_zero_before_executed queued_after_created executed_after_queue queuedAt_is_zero_before_queued no_early_cancellation guardian_can_cancel executed_when_in_queued_state execute_before_delay__maximumAccessLevelRequired action_immutable_fixed_size_fields initialized_payload_fields_are_immutable payload_fields_immutable_after_createPayload method_reachability \
           --msg "1: many rules"

certoraRun --fe_version latest --send_only --disable_auto_cache_key_gen \
           security/certora/confs/payloads/verifyPayloadsController.conf \
           --rule executor_exists_if_action_not_null \
           --msg "2: executor_exists_if_action_not_null"

certoraRun --fe_version latest --send_only --disable_auto_cache_key_gen \
           security/certora/confs/payloads/verifyPayloadsController.conf \
           --rule executor_exists_only_if_action_not_null \
           --msg "3: executor_exists_only_if_action_not_null"

certoraRun --fe_version latest --send_only --disable_auto_cache_key_gen \
           security/certora/confs/payloads/verifyPayloadsController.conf \
           --rule payload_delay_within_range \
           --msg "4: payload_delay_within_range"

certoraRun --fe_version latest --send_only --disable_auto_cache_key_gen \
           security/certora/confs/payloads/verifyPayloadsController.conf \
           --rule delay_of_executor_of_max_access_level_within_range \
           --msg "5: delay_of_executor_of_max_access_level_within_range"

certoraRun --fe_version latest --send_only --disable_auto_cache_key_gen \
           security/certora/confs/payloads/verifyPayloadsController.conf \
           --rule nonempty_actions \
           --msg "6: nonempty_actions"

certoraRun --fe_version latest --send_only --disable_auto_cache_key_gen \
           security/certora/confs/payloads/verifyPayloadsController.conf \
           --rule executor_exists_iff_action_not_null \
           --msg "7: executor_exists_iff_action_not_null"

certoraRun --fe_version latest --send_only --disable_auto_cache_key_gen \
           security/certora/confs/payloads/verifyPayloadsController.conf \
           --rule null_access_level_iff_state_is_none \
           --msg "8: null_access_level_iff_state_is_none"

certoraRun --fe_version latest --send_only --disable_auto_cache_key_gen \
           security/certora/confs/payloads/verifyPayloadsController.conf \
           --rule executor_of_maximumAccessLevelRequired_exists \
           --msg "9: executor_of_maximumAccessLevelRequired_exists"

certoraRun --fe_version latest --send_only --disable_auto_cache_key_gen \
           security/certora/confs/payloads/verifyPayloadsController.conf \
           --rule executor_of_maximumAccessLevelRequired_exists_after_createPayload \
           --msg "10: executor_of_maximumAccessLevelRequired_exists_after_createPayload"

certoraRun --fe_version latest --send_only --disable_auto_cache_key_gen \
           security/certora/confs/payloads/verifyPayloadsController.conf \
           --rule action_access_level_isnt_null_after_createPayload \
           --msg "11: action_access_level_isnt_null_after_createPayload"

certoraRun --fe_version latest --send_only --disable_auto_cache_key_gen \
           security/certora/confs/payloads/verifyPayloadsController.conf \
           --rule executor_exists_after_createPayload \
           --msg "12: executor_exists_after_createPayload"

certoraRun --fe_version latest --send_only --disable_auto_cache_key_gen \
           security/certora/confs/payloads/verifyPayloadsController.conf \
           --rule action_callData_immutable \
           --msg "13: action_callData_immutable"

certoraRun --fe_version latest --send_only --disable_auto_cache_key_gen \
           security/certora/confs/payloads/verifyPayloadsController.conf \
           --rule action_signature_immutable \
           --msg "14: action_signature_immutable"

certoraRun --fe_version latest --send_only --disable_auto_cache_key_gen \
           security/certora/confs/payloads/verifyPayloadsController.conf \
           --rule action_immutable_check_only_fixed_size_fields \
           --msg "15: action_immutable_check_only_fixed_size_fields"

certoraRun --fe_version latest --send_only --disable_auto_cache_key_gen \
           security/certora/confs/payloads/verifyPayloadsController.conf \
           --rule zero_executedAt_if_not_executed \
           --msg "16: zero_executedAt_if_not_executed"
