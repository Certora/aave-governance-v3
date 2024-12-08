#CMN="--compilation_steps_only"



           
echo "******** Running:  execution - all rules ***************"
certoraRun $CMN security/certora/confs/payloads/verifyPayloadsController.conf  --rule payload_maximal_access_level_gt_action_access_level state_cant_decrease no_transition_beyond_state_gt_3 no_transition_beyond_state_variable_gt_3 no_queue_after_expiration empty_actions_if_out_of_bound_payload expirationTime_equal_to_createAt_plus_EXPIRATION_DELAY empty_actions_iff_uninitialized null_access_level_if_out_of_bound_payload null_creator_and_zero_expiration_time_if_out_of_bound_payload empty_actions_only_if_uninitialized_payload executor_access_level_within_range consecutiveIDs empty_actions_if_uninitialized_payload queued_before_expiration_delay payload_grace_period_eq_global_grace_period null_access_level_only_if_out_of_bound_payload null_state_variable_if_out_of_bound_payload created_in_the_past queued_after_created executed_after_queue queuedAt_is_zero_before_queued no_early_cancellation execute_before_delay__maximumAccessLevelRequired action_immutable_fixed_size_fields initialized_payload_fields_are_immutable payload_fields_immutable_after_createPayload method_reachability executor_exists_if_action_not_null executor_exists_only_if_action_not_null  payload_delay_within_range  delay_of_executor_of_max_access_level_within_range  nonempty_actions  executor_exists_iff_action_not_null  null_access_level_iff_state_is_none  executor_of_maximumAccessLevelRequired_exists  executor_of_maximumAccessLevelRequired_exists_after_createPayload   action_access_level_isnt_null_after_createPayload  executor_exists_after_createPayload  action_callData_immutable  action_signature_immutable  action_immutable_check_only_fixed_size_fields  zero_executedAt_if_not_executed  executor_isnt_used_twice executor_of_level_null_is_zero  executed_after_queue_state_variable zero_executedAt_if_not_executed_state_variable  queuedAt_is_zero_before_queued_state_variable executedAt_is_zero_before_executed_state_variable null_state_equivalence  executedAt_is_zero_before_executed  executed_when_in_queued_state executed_when_in_queued_state_variable guardian_can_cancel no_late_cancel state_variable_cant_decrease  checkUpdateExecutors checkUpdateExecutors_witness_1 checkUpdateExecutors_witness_2 checkUpdateExecutors_witness_3 checkUpdateExecutors_witness_4  payload_state_transition_post_state payload_state_transition_pre_state \
           --msg "execution - all rules"
