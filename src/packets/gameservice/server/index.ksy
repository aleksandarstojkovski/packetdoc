#pragma.template metapacket
---
meta:
  id: gameservice_server_packet
  title: GameService Server Packets
  encoding: ASCII
  endian: le
  imports:
    - '0040'
    - '0044'
    - '0046'
    - '0047'
    - '0048'
    - '0049'
    - '004a'
    - '004b'
    - '004c'
    - '004d'
    - '0055'
    - '0056'
    - '0058'
    - '0059'
    - '005a'
    - '0063'
    - '0068'
    - '006b'
    - '006c'
    - '006d'
    - '006e'
    - '0072'
    - '0073'
    - '0078'
    - '007d'
    - '0084'
    - '0086'
    - '0089'
    - '0095'
    - '0096'
    - '009f'
    - '00a1'
    - '00a7'
    - '00aa'
    - '00c4'
    - '00c8'
    - '00ce'
    - '00dd'
    - '00e6'
    - '00e7'
    - '00ec'
    - '00ed'
    - '00f5'
    - '00f6'
    - '00fb'
    - '010b'
    - '010e'
    - '012b'
    - '012d'
    - '0133'
    - '0134'
    - '0139'
    - '0154'
    - '0156'
    - '0157'
    - '0158'
    - '0159'
    - '015a'
    - '015b'
    - '015c'
    - '015d'
    - '015e'
    - '0168'
    - '016c'
    - '016d'
    - '016e'
    - '016f'
    - '0170'
    - '0171'
    - '0172'
    - '0196'
    - '019d'
    - '01bc'
    - '01bd'
    - '01d4'
    - '01eb'
    - '01f7'
    - '0211'
    - '0212'
    - '0213'
    - '0214'
    - '0215'
    - '0216'
    - '021b'
    - '021d'
    - '021e'
    - '0220'
    - '0225'
    - '0226'
    - '0227'
    - '0228'
    - '0229'
    - '022a'
    - '022c'
    - '022d'
    - '022e'
    - '022f'
    - '0248'
    - '0249'
    - '0250'
    - '0251'
    - '0253'
    - '0254'
    - '0257'
    - '0264'
    - '026a'
    - '026b'
    - '0274'
    - '027d'

seq:
  - id: packet_id
    type: u2
  - id: data
    type:
      switch-on: packet_id
      cases:
        0x0040: gameservice_server_0040_message_data
        0x0044: gameservice_server_0044_unknown
        0x0046: gameservice_server_0046_user_census
        0x0047: gameservice_server_0047_room_list
        0x0048: gameservice_server_0048_room_census
        0x0049: gameservice_server_0049_room_join_response
        0x004a: gameservice_server_004a_room_settings_announce
        0x004b: gameservice_server_004b_user_equipment_announce
        0x004c: gameservice_server_004c_room_leave_response
        0x004d: gameservice_server_004d_sub_server_list
        0x0055: gameservice_server_0055_shot_commit_announce
        0x0056: gameservice_server_0056_shot_rotate_announce
        0x0058: gameservice_server_0058_shot_power_announce
        0x0059: gameservice_server_0059_shot_club_change_announce
        0x005a: gameservice_server_005a_shot_item_use_announce
        0x0063: gameservice_server_0063_shot_active_user_announce
        0x0068: gameservice_server_0068_pangya_shop_purchase_response
        0x006b: gameservice_server_006b_equipment_response
        0x006c: gameservice_server_006c_tournament_user_finish
        0x006d: gameservice_server_006d_tournament_user_update
        0x006e: gameservice_server_006e_unknown_tourney_related_announce
        0x0072: gameservice_server_0072_user_equipment
        0x0073: gameservice_server_0073_user_inventory
        0x0078: gameservice_server_0078_room_user_ready_state_response
        0x007d: gameservice_server_007d_user_team_change_announce
        0x0084: gameservice_server_0084_whisper_data
        0x0086: gameservice_server_0086_room_information_response
        0x0089: gameservice_server_0089_user_information_response
        0x0095: gameservice_server_0095_money_update
        0x0096: gameservice_server_0096_cookie_balance
        0x009f: gameservice_server_009f_server_list
        0x00a1: gameservice_server_00a1_user_status_response
        0x00a7: gameservice_server_00a7_lootbox_inventory_update
        0x00aa: gameservice_server_00aa_inventory_slot_assign
        0x00c4: gameservice_server_00c4_user_lounge_action_announce
        0x00c8: gameservice_server_00c8_pang_balance
        0x00ce: gameservice_server_00ce_tournament_item_winnings
        0x00dd: gameservice_server_00dd_scratchy_play_result
        0x00e6: gameservice_server_00e6_user_shop_inventory
        0x00e7: gameservice_server_00e7_user_shop_leave_response
        0x00ec: gameservice_server_00ec_item_transact
        0x00ed: gameservice_server_00ed_user_shop_purchase_announce
        0x00f5: gameservice_server_00f5_multiplayer_mode_join_response
        0x00f6: gameservice_server_00f6_multiplayer_mode_leave_response
        0x00fb: gameservice_server_00fb_unknown_black_papel_related
        0x010b: gameservice_server_010b_rare_shop_open_response
        0x010c: gameservice_server_010e_unknown_opponent_related_response
        0x012b: gameservice_server_012b_inventory_open_a_response
        0x012d: gameservice_server_012d_my_room_layout
        0x0133: gameservice_server_0133_treasure_point_result
        0x0134: gameservice_server_0134_treasure_point_winnings
        0x0139: gameservice_server_0139_locker_item_deposit_response_a
        0x0154: gameservice_server_0154_cardholic_pack_open_response
        0x0156: gameservice_server_0156_user_information_consumables
        0x0157: gameservice_server_0157_unknown_user_related_response
        0x0158: gameservice_server_0158_unknown_user_related_response
        0x0159: gameservice_server_0159_unknown_user_related_response
        0x015a: gameservice_server_015a_unknown_user_related_response
        0x015b: gameservice_server_015b_unknown_user_related_response
        0x015c: gameservice_server_015c_user_information_course_records
        0x015d: gameservice_server_015d_user_information_guild
        0x015e: gameservice_server_015e_user_information_equipment
        0x0168: gameservice_server_0168_user_information
        0x016c: gameservice_server_016c_locker_combination_response
        0x016d: gameservice_server_016d_locker_page_response
        0x016e: gameservice_server_016e_locker_item_deposit_response_b
        0x016f: gameservice_server_016f_locker_item_withdraw_response
        0x0170: gameservice_server_0170_locker_inventory_response
        0x0171: gameservice_server_0171_locker_pang_transact_response
        0x0172: gameservice_server_0172_locker_pang_balance
        0x0196: gameservice_server_0196_unknown_lounge_related_response
        0x019d: gameservice_server_019d_lootbox_open_result
        0x01bc: gameservice_server_01bc_guild_list
        0x01bd: gameservice_server_01bd_guild_search_response
        0x01d4: gameservice_server_01d4_new_session_key
        0x01eb: gameservice_server_01eb_scratchy_menu_open_response
        0x01f7: gameservice_server_01f7_unknown_tourney_related_announce
        0x0211: gameservice_server_0211_mailbox_response
        0x0212: gameservice_server_0212_mail_read_response
        0x0213: gameservice_server_0213_mail_send_response
        0x0214: gameservice_server_0214_mail_attachments_take_response
        0x0215: gameservice_server_0215_mail_delete_response
        0x0216: gameservice_server_0216_user_status_update
        0x021b: gameservice_server_021b_black_papel_result
        0x021d: gameservice_server_021d_achievement_progress_report
        0x021e: gameservice_server_021e_achievement_association_report
        0x0220: gameservice_server_0220_achievement_update
        0x0225: gameservice_server_0225_quest_status_response
        0x0226: gameservice_server_0226_quest_accept_response
        0x0227: gameservice_server_0227_quest_submit_response
        0x0228: gameservice_server_0228_quest_dismiss_response
        0x0229: gameservice_server_0229_tiki_shop_card_exchange_response_a
        0x022a: gameservice_server_022a_tiki_shop_card_exchange_response_b
        0x022c: gameservice_server_022c_unknown_achievement_related_response
        0x022d: gameservice_server_022d_achievement_status_response
        0x022e: gameservice_server_022e_achievement_unlocked
        0x022f: gameservice_server_022f_tiki_shop_item_convert_response
        0x0248: gameservice_server_0248_login_bonus_status_response
        0x0249: gameservice_server_0249_login_bonus_claim_response
        0x0250: gameservice_server_0250_event_mode_join_response
        0x0251: gameservice_server_0251_event_mode_leave_response
        0x0253: gameservice_server_0253_event_room_join_response
        0x0254: gameservice_server_0254_event_room_leave_response
        0x0257: gameservice_server_0257_unknown_user_related_response
        0x0264: gameservice_server_0264_memorial_coin_result
        0x026a: gameservice_server_026a_shot_assist_toggle_response
        0x026b: gameservice_server_026b_shot_assist_activate_response
        0x0274: gameservice_server_0274_tiki_shop_item_recycle_response
        0x027d: gameservice_server_027d_unknown_cookies_related_response
