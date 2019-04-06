" Vim syntax file
" Language:         UPF (IEEE Std 1801)
" Maintainer:       Malitha  , Rukshan
" Original:         Malitha
" Version:          0.9
" Latest Revision:  5 June 2017


if exists("b:current_syntax")
  finish
endif


syn sync lines=1000
syn case match

"##########################################################
"       UPF Syntax
"##########################################################

syn keyword UPF_KW create_supply_net connect_supply_net set_domain_supply_net add_port_state create_power_domain 
syn keyword UPF_KW set_retention create_power_state_group set_design_attributes 
syn keyword UPF_KW create_pst add_pst_state set_related_supply_net set_level_shifter set_isolation create_supply_port set_isolation_control
syn match   UPF_KW '\-primary_power_net'
syn match   UPF_KW '\-primary_ground_net'
syn match   UPF_KW '\-isolation_power_net'
syn match   UPF_KW '\-isolation_ground_net'
syn match   UPF_KW '\-supply'
syn match   UPF_KW '\-scope'
syn match   UPF_KW '\-isolation_signal'
syn match   UPF_KW '\-isolation_sense'
syn match   UPF_KW '\-location'
syn match   UPF_KW '\-domain'
syn match   UPF_KW '\-ports'
syn match   UPF_KW '\-state'
syn match   UPF_KW '\-supplies'
syn match   UPF_KW '\-pst'
syn match   UPF_KW '\-attribute'
syn match   UPF_KW '\-direction'
syn match   UPF_KW '\-applies_to'
syn match   UPF_KW '\-supply_expr'
syn match   UPF_KW '\-clamp_value'
syn match   UPF_KW '\-threshold'
syn match   UPF_KW '\-rule'
syn match   UPF_KW '\-supply_set'
syn match   UPF_KW '\-object_list'
syn match   UPF_KW '\-power'
syn match   UPF_KW '\-no_retention'
syn match   UPF_KW '\-reuse'
syn match   UPF_KW '\-include_scope'
syn match   UPF_KW '\-elements'
syn match   UPF_KW '\-isolation_supply_set'
syn match   UPF_KW '\-retention_supply_set'
syn match   UPF_KW '\-save_signal'
syn match   UPF_KW '\-restore_signal'
syn match   UPF_KW '\-output_supply_port'
syn match   UPF_KW '\-input_supply_port'
syn match   UPF_KW '\-control_port'
syn match   UPF_KW '\-on_state'
syn match   UPF_KW '\-off_state'
syn match   UPF_KW '\-group'
syn match   UPF_KW '\-logic_expr'
syn match   UPF_KW '\-driver_supply'
syn match   UPF_KW '\-receiver_supply'
syn match   UPF_KW '\-function'
syn match   UPF_KW '\-illegal'
syn match   UPF_KW '\-simstate'
syn match   UPF_KW '\-handle'
syn match   UPF_KW '\-lib_cells'
syn match   UPF_KW '\-no_isolation'
syn match   UPF_KW '\-update'
syn match   UPF_KW '\-resolve'
syn match   UPF_KW '\-ack_port'
syn keyword UPF_KW add_domain_elements add_power_state
syn keyword UPF_KW add_port_state associate_supply_set add_pst_state connect_logic_net 
syn keyword UPF_KW bind_checker connect_supply_set connect_supply_net create_composite_domain
syn keyword UPF_KW create_hdl2upf_vct create_upf2hdl_vct create_power_domain create_logic_net 
syn keyword UPF_KW create_power_switch create_logic_port create_pst create_supply_set 
syn keyword UPF_KW create_supply_net describe_state_transition create_supply_port load_simstate_behavior 
syn keyword UPF_KW create_upf2hdl_vct load_upf_protected get_supply_net set_partial_on_translation 
syn keyword UPF_KW load_upf set_port_attributes map_isolation_cell set_retention_elements
syn keyword UPF_KW map_level_shifter_cell set_simstate_behavior map_power_switch use_interface_cell
syn keyword UPF_KW map_retention_cell use_retention_cell merge_power_domains name_format save_upf set_design_top
syn keyword UPF_KW set_domain_supply_net set_isolation set_isolation_control set_level_shifter
syn keyword UPF_KW set_pin_related_supply set_power_switch set_retention set_retention_control set_scope upf_version
syn keyword UPF_SUP in out self parent high low both low_to_high high_to_low outputs inputs OFF power ground FULL_ON
syn keyword UPF_SUP primary NORMAL CORRUPT CORRUPT_ON_ACTIVITY CORRUPT_ON_CHANGE CORRUPT_STATE_ON_ACTIVITY 
syn keyword UPF_SUP CORRUPT_STATE_ON_CHANGE NORMAL default_isolation automatic nwell pwell fanout enable_bias true false TRUE FALSE rukshan

" IEEE 5.3.2
    " Domain record field space
syn keyword UPF_RESERVED primary default_retention default_isolation
    " Switch record filed space
syn keyword UPF_RESERVED supply
    " Level-shifter strategy record field name space
syn keyword UPF_RESERVED input_supply_set output_supply_set internal_supply_set
    " Isolation strategy record field name space
syn keyword UPF_RESERVED isonlation_suuply_set isolation_signal
    " Retention strategy record field name space
syn keyword UPF_RESERVED retention_ref retention_supply_set primary_ref primary_supply_set
syn keyword UPF_RESERVED save_signal restore_signal UPF_GENERIC_CLOCK UPF_GENERIC_DATA
syn keyword UPF_RESERVED UPF_GENERIC_ASYNC_LOAD UPF_GENERIC_OUTPUT

" IEEE 5.3.5 Special Characters
" TODO: not checked
syn keyword UPF_SPECIAL_CHAR / \ : .

" Boolean operators
syn match UPF_OPERATORS "[~!<>^&|]"
" Floating synpoint number with .
syn match UPF_NUMBER "\d\+\.\d*"
" Integer numbers
syn match UPF_NUMBER "\d\+"

" Todo inside comments
syn keyword UPF_TODO contained TODO todo
"UPF Comments
syn match UPF_COMMENT "^\s*#.*$" contains=UPF_TODO

hi def link UPF_KW Type
hi def link UPF_SUP PreProc
hi def link UPF_COMMENT Comment
hi def link UPF_RESERVED Keyword
hi def link UPF_SPECIAL_CHAR Special
hi def link UPF_TODO Todo
hi def link UPF_NUMBER Number
hi def link UPF_OPERATORS Operator


let b:current_syntax = "upf"



