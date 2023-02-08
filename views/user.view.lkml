view: user {
  sql_table_name: "SALESFORCE"."USER"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."ID" ;;
  }

  dimension: _fivetran_deleted {
    type: yesno
    sql: ${TABLE}."_FIVETRAN_DELETED" ;;
  }

  dimension_group: _fivetran_synced {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."_FIVETRAN_SYNCED" AS TIMESTAMP_NTZ) ;;
  }

  dimension: about_me {
    type: string
    sql: ${TABLE}."ABOUT_ME" ;;
  }

  dimension: account_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."ACCOUNT_ID" ;;
  }

  dimension: alias {
    type: string
    sql: ${TABLE}."ALIAS" ;;
  }

  dimension: ambition_is_ambition_user_c {
    type: yesno
    sql: ${TABLE}."AMBITION_IS_AMBITION_USER_C" ;;
  }

  dimension: asknicely_preferred_account_nps_period_c {
    type: string
    sql: ${TABLE}."ASKNICELY_PREFERRED_ACCOUNT_NPS_PERIOD_C" ;;
  }

  dimension: badge_text {
    type: string
    sql: ${TABLE}."BADGE_TEXT" ;;
  }

  dimension: banner_photo_url {
    type: string
    sql: ${TABLE}."BANNER_PHOTO_URL" ;;
  }

  dimension: calendly_link_c {
    type: string
    sql: ${TABLE}."CALENDLY_LINK_C" ;;
  }

  dimension: call_center_id {
    type: string
    sql: ${TABLE}."CALL_CENTER_ID" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."CITY" ;;
  }

  dimension: community_nickname {
    type: string
    sql: ${TABLE}."COMMUNITY_NICKNAME" ;;
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}."COMPANY_NAME" ;;
  }

  dimension: contact_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."CONTACT_ID" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."COUNTRY" ;;
  }

  dimension: created_by_id {
    type: string
    sql: ${TABLE}."CREATED_BY_ID" ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."CREATED_DATE" AS TIMESTAMP_NTZ) ;;
  }

  dimension: default_group_notification_frequency {
    type: string
    sql: ${TABLE}."DEFAULT_GROUP_NOTIFICATION_FREQUENCY" ;;
  }

  dimension: delegated_approver_id {
    type: string
    sql: ${TABLE}."DELEGATED_APPROVER_ID" ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}."DEPARTMENT" ;;
  }

  dimension: digest_frequency {
    type: string
    sql: ${TABLE}."DIGEST_FREQUENCY" ;;
  }

  dimension: division {
    type: string
    sql: ${TABLE}."DIVISION" ;;
  }

  dimension: dsfs_dspro_sfusername_c {
    type: string
    sql: ${TABLE}."DSFS_DSPRO_SFUSERNAME_C" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."EMAIL" ;;
  }

  dimension: email_encoding_key {
    type: string
    sql: ${TABLE}."EMAIL_ENCODING_KEY" ;;
  }

  dimension: email_preferences_auto_bcc {
    type: yesno
    sql: ${TABLE}."EMAIL_PREFERENCES_AUTO_BCC" ;;
  }

  dimension: email_preferences_auto_bcc_stay_in_touch {
    type: yesno
    sql: ${TABLE}."EMAIL_PREFERENCES_AUTO_BCC_STAY_IN_TOUCH" ;;
  }

  dimension: email_preferences_stay_in_touch_reminder {
    type: yesno
    sql: ${TABLE}."EMAIL_PREFERENCES_STAY_IN_TOUCH_REMINDER" ;;
  }

  dimension: employee_number {
    type: string
    sql: ${TABLE}."EMPLOYEE_NUMBER" ;;
  }

  dimension: extension {
    type: string
    sql: ${TABLE}."EXTENSION" ;;
  }

  dimension: fax {
    type: string
    sql: ${TABLE}."FAX" ;;
  }

  dimension: federation_identifier {
    type: string
    sql: ${TABLE}."FEDERATION_IDENTIFIER" ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}."FIRST_NAME" ;;
  }

  dimension: forecast_enabled {
    type: yesno
    sql: ${TABLE}."FORECAST_ENABLED" ;;
  }

  dimension: full_photo_url {
    type: string
    sql: ${TABLE}."FULL_PHOTO_URL" ;;
  }

  dimension: geocode_accuracy {
    type: string
    sql: ${TABLE}."GEOCODE_ACCURACY" ;;
  }

  dimension: individual_id {
    type: string
    sql: ${TABLE}."INDIVIDUAL_ID" ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}."IS_ACTIVE" ;;
  }

  dimension: is_ext_indicator_visible {
    type: yesno
    sql: ${TABLE}."IS_EXT_INDICATOR_VISIBLE" ;;
  }

  dimension: is_profile_photo_active {
    type: yesno
    sql: ${TABLE}."IS_PROFILE_PHOTO_ACTIVE" ;;
  }

  dimension: language_locale_key {
    type: string
    sql: ${TABLE}."LANGUAGE_LOCALE_KEY" ;;
  }

  dimension_group: last_login {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."LAST_LOGIN_DATE" AS TIMESTAMP_NTZ) ;;
  }

  dimension: last_modified_by_id {
    type: string
    sql: ${TABLE}."LAST_MODIFIED_BY_ID" ;;
  }

  dimension_group: last_modified {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."LAST_MODIFIED_DATE" AS TIMESTAMP_NTZ) ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}."LAST_NAME" ;;
  }

  dimension_group: last_password_change {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."LAST_PASSWORD_CHANGE_DATE" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: last_referenced {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."LAST_REFERENCED_DATE" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: last_viewed {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."LAST_VIEWED_DATE" AS TIMESTAMP_NTZ) ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}."LATITUDE" ;;
  }

  dimension: locale_sid_key {
    type: string
    sql: ${TABLE}."LOCALE_SID_KEY" ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}."LONGITUDE" ;;
  }

  dimension: manager_id {
    type: string
    sql: ${TABLE}."MANAGER_ID" ;;
  }

  dimension: medium_banner_photo_url {
    type: string
    sql: ${TABLE}."MEDIUM_BANNER_PHOTO_URL" ;;
  }

  dimension: medium_photo_url {
    type: string
    sql: ${TABLE}."MEDIUM_PHOTO_URL" ;;
  }

  dimension: middle_name {
    type: string
    sql: ${TABLE}."MIDDLE_NAME" ;;
  }

  dimension: mkto_si_is_caching_anon_web_activity_list_c {
    type: yesno
    sql: ${TABLE}."MKTO_SI_IS_CACHING_ANON_WEB_ACTIVITY_LIST_C" ;;
  }

  dimension: mkto_si_is_caching_best_bets_c {
    type: yesno
    sql: ${TABLE}."MKTO_SI_IS_CACHING_BEST_BETS_C" ;;
  }

  dimension: mkto_si_is_caching_email_activity_list_c {
    type: yesno
    sql: ${TABLE}."MKTO_SI_IS_CACHING_EMAIL_ACTIVITY_LIST_C" ;;
  }

  dimension: mkto_si_is_caching_grouped_web_activity_list_c {
    type: yesno
    sql: ${TABLE}."MKTO_SI_IS_CACHING_GROUPED_WEB_ACTIVITY_LIST_C" ;;
  }

  dimension: mkto_si_is_caching_interesting_moments_list_c {
    type: yesno
    sql: ${TABLE}."MKTO_SI_IS_CACHING_INTERESTING_MOMENTS_LIST_C" ;;
  }

  dimension: mkto_si_is_caching_scoring_list_c {
    type: yesno
    sql: ${TABLE}."MKTO_SI_IS_CACHING_SCORING_LIST_C" ;;
  }

  dimension: mkto_si_is_caching_stream_list_c {
    type: yesno
    sql: ${TABLE}."MKTO_SI_IS_CACHING_STREAM_LIST_C" ;;
  }

  dimension: mkto_si_is_caching_watch_list_c {
    type: yesno
    sql: ${TABLE}."MKTO_SI_IS_CACHING_WATCH_LIST_C" ;;
  }

  dimension: mkto_si_is_caching_web_activity_list_c {
    type: yesno
    sql: ${TABLE}."MKTO_SI_IS_CACHING_WEB_ACTIVITY_LIST_C" ;;
  }

  dimension: mkto_si_sales_insight_counter_c {
    type: number
    sql: ${TABLE}."MKTO_SI_SALES_INSIGHT_COUNTER_C" ;;
  }

  dimension: mobile_phone {
    type: string
    sql: ${TABLE}."MOBILE_PHONE" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: number_of_failed_logins {
    type: number
    sql: ${TABLE}."NUMBER_OF_FAILED_LOGINS" ;;
  }

  dimension_group: offline_pda_trial_expiration {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."OFFLINE_PDA_TRIAL_EXPIRATION_DATE" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: offline_trial_expiration {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."OFFLINE_TRIAL_EXPIRATION_DATE" AS TIMESTAMP_NTZ) ;;
  }

  dimension: out_of_office_message {
    type: string
    sql: ${TABLE}."OUT_OF_OFFICE_MESSAGE" ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}."PHONE" ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}."POSTAL_CODE" ;;
  }

  dimension: profile_id {
    type: string
    sql: ${TABLE}."PROFILE_ID" ;;
  }

  dimension: receives_admin_info_emails {
    type: yesno
    sql: ${TABLE}."RECEIVES_ADMIN_INFO_EMAILS" ;;
  }

  dimension: receives_info_emails {
    type: yesno
    sql: ${TABLE}."RECEIVES_INFO_EMAILS" ;;
  }

  dimension: sender_email {
    type: string
    sql: ${TABLE}."SENDER_EMAIL" ;;
  }

  dimension: sender_name {
    type: string
    sql: ${TABLE}."SENDER_NAME" ;;
  }

  dimension: signature {
    type: string
    sql: ${TABLE}."SIGNATURE" ;;
  }

  dimension: small_banner_photo_url {
    type: string
    sql: ${TABLE}."SMALL_BANNER_PHOTO_URL" ;;
  }

  dimension: small_photo_url {
    type: string
    sql: ${TABLE}."SMALL_PHOTO_URL" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."STATE" ;;
  }

  dimension: stay_in_touch_note {
    type: string
    sql: ${TABLE}."STAY_IN_TOUCH_NOTE" ;;
  }

  dimension: stay_in_touch_signature {
    type: string
    sql: ${TABLE}."STAY_IN_TOUCH_SIGNATURE" ;;
  }

  dimension: stay_in_touch_subject {
    type: string
    sql: ${TABLE}."STAY_IN_TOUCH_SUBJECT" ;;
  }

  dimension: street {
    type: string
    sql: ${TABLE}."STREET" ;;
  }

  dimension_group: system_modstamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."SYSTEM_MODSTAMP" AS TIMESTAMP_NTZ) ;;
  }

  dimension: time_zone_sid_key {
    type: string
    sql: ${TABLE}."TIME_ZONE_SID_KEY" ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}."TITLE" ;;
  }

  dimension: user_permissions_avantgo_user {
    type: yesno
    sql: ${TABLE}."USER_PERMISSIONS_AVANTGO_USER" ;;
  }

  dimension: user_permissions_call_center_auto_login {
    type: yesno
    sql: ${TABLE}."USER_PERMISSIONS_CALL_CENTER_AUTO_LOGIN" ;;
  }

  dimension: user_permissions_chatter_answers_user {
    type: yesno
    sql: ${TABLE}."USER_PERMISSIONS_CHATTER_ANSWERS_USER" ;;
  }

  dimension: user_permissions_interaction_user {
    type: yesno
    sql: ${TABLE}."USER_PERMISSIONS_INTERACTION_USER" ;;
  }

  dimension: user_permissions_knowledge_user {
    type: yesno
    sql: ${TABLE}."USER_PERMISSIONS_KNOWLEDGE_USER" ;;
  }

  dimension: user_permissions_marketing_user {
    type: yesno
    sql: ${TABLE}."USER_PERMISSIONS_MARKETING_USER" ;;
  }

  dimension: user_permissions_mobile_user {
    type: yesno
    sql: ${TABLE}."USER_PERMISSIONS_MOBILE_USER" ;;
  }

  dimension: user_permissions_offline_user {
    type: yesno
    sql: ${TABLE}."USER_PERMISSIONS_OFFLINE_USER" ;;
  }

  dimension: user_permissions_sfcontent_user {
    type: yesno
    sql: ${TABLE}."USER_PERMISSIONS_SFCONTENT_USER" ;;
  }

  dimension: user_permissions_support_user {
    type: yesno
    sql: ${TABLE}."USER_PERMISSIONS_SUPPORT_USER" ;;
  }

  dimension: user_preferences_activity_reminders_popup {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_ACTIVITY_REMINDERS_POPUP" ;;
  }

  dimension: user_preferences_apex_pages_developer_mode {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_APEX_PAGES_DEVELOPER_MODE" ;;
  }

  dimension: user_preferences_cache_diagnostics {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_CACHE_DIAGNOSTICS" ;;
  }

  dimension: user_preferences_create_lexapps_wtshown {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_CREATE_LEXAPPS_WTSHOWN" ;;
  }

  dimension: user_preferences_dis_comment_after_like_email {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_DIS_COMMENT_AFTER_LIKE_EMAIL" ;;
  }

  dimension: user_preferences_dis_mentions_comment_email {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_DIS_MENTIONS_COMMENT_EMAIL" ;;
  }

  dimension: user_preferences_dis_prof_post_comment_email {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_DIS_PROF_POST_COMMENT_EMAIL" ;;
  }

  dimension: user_preferences_disable_all_feeds_email {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_DISABLE_ALL_FEEDS_EMAIL" ;;
  }

  dimension: user_preferences_disable_bookmark_email {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_DISABLE_BOOKMARK_EMAIL" ;;
  }

  dimension: user_preferences_disable_change_comment_email {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_DISABLE_CHANGE_COMMENT_EMAIL" ;;
  }

  dimension: user_preferences_disable_endorsement_email {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_DISABLE_ENDORSEMENT_EMAIL" ;;
  }

  dimension: user_preferences_disable_file_share_notifications_for_api {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_DISABLE_FILE_SHARE_NOTIFICATIONS_FOR_API" ;;
  }

  dimension: user_preferences_disable_followers_email {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_DISABLE_FOLLOWERS_EMAIL" ;;
  }

  dimension: user_preferences_disable_later_comment_email {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_DISABLE_LATER_COMMENT_EMAIL" ;;
  }

  dimension: user_preferences_disable_like_email {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_DISABLE_LIKE_EMAIL" ;;
  }

  dimension: user_preferences_disable_mentions_post_email {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_DISABLE_MENTIONS_POST_EMAIL" ;;
  }

  dimension: user_preferences_disable_message_email {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_DISABLE_MESSAGE_EMAIL" ;;
  }

  dimension: user_preferences_disable_profile_post_email {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_DISABLE_PROFILE_POST_EMAIL" ;;
  }

  dimension: user_preferences_disable_share_post_email {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_DISABLE_SHARE_POST_EMAIL" ;;
  }

  dimension: user_preferences_enable_auto_sub_for_feeds {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_ENABLE_AUTO_SUB_FOR_FEEDS" ;;
  }

  dimension: user_preferences_event_reminders_checkbox_default {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_EVENT_REMINDERS_CHECKBOX_DEFAULT" ;;
  }

  dimension: user_preferences_exclude_mail_app_attachments {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_EXCLUDE_MAIL_APP_ATTACHMENTS" ;;
  }

  dimension: user_preferences_favorites_show_top_favorites {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_FAVORITES_SHOW_TOP_FAVORITES" ;;
  }

  dimension: user_preferences_favorites_wtshown {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_FAVORITES_WTSHOWN" ;;
  }

  dimension: user_preferences_global_nav_bar_wtshown {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_GLOBAL_NAV_BAR_WTSHOWN" ;;
  }

  dimension: user_preferences_global_nav_grid_menu_wtshown {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_GLOBAL_NAV_GRID_MENU_WTSHOWN" ;;
  }

  dimension: user_preferences_has_celebration_badge {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_HAS_CELEBRATION_BADGE" ;;
  }

  dimension: user_preferences_hide_bigger_photo_callout {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_HIDE_BIGGER_PHOTO_CALLOUT" ;;
  }

  dimension: user_preferences_hide_chatter_onboarding_splash {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_HIDE_CHATTER_ONBOARDING_SPLASH" ;;
  }

  dimension: user_preferences_hide_csndesktop_task {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_HIDE_CSNDESKTOP_TASK" ;;
  }

  dimension: user_preferences_hide_csnget_chatter_mobile_task {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_HIDE_CSNGET_CHATTER_MOBILE_TASK" ;;
  }

  dimension: user_preferences_hide_end_user_onboarding_assistant_modal {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_HIDE_END_USER_ONBOARDING_ASSISTANT_MODAL" ;;
  }

  dimension: user_preferences_hide_lightning_migration_modal {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_HIDE_LIGHTNING_MIGRATION_MODAL" ;;
  }

  dimension: user_preferences_hide_s_1_browser_ui {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_HIDE_S_1_BROWSER_UI" ;;
  }

  dimension: user_preferences_hide_second_chatter_onboarding_splash {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_HIDE_SECOND_CHATTER_ONBOARDING_SPLASH" ;;
  }

  dimension: user_preferences_hide_sfx_welcome_mat {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_HIDE_SFX_WELCOME_MAT" ;;
  }

  dimension: user_preferences_lightning_experience_preferred {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_LIGHTNING_EXPERIENCE_PREFERRED" ;;
  }

  dimension: user_preferences_native_email_client {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_NATIVE_EMAIL_CLIENT" ;;
  }

  dimension: user_preferences_new_lightning_report_run_page_enabled {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_NEW_LIGHTNING_REPORT_RUN_PAGE_ENABLED" ;;
  }

  dimension: user_preferences_path_assistant_collapsed {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_PATH_ASSISTANT_COLLAPSED" ;;
  }

  dimension: user_preferences_pipeline_view_hide_help_popover {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_PIPELINE_VIEW_HIDE_HELP_POPOVER" ;;
  }

  dimension: user_preferences_preview_custom_theme {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_PREVIEW_CUSTOM_THEME" ;;
  }

  dimension: user_preferences_preview_lightning {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_PREVIEW_LIGHTNING" ;;
  }

  dimension: user_preferences_receive_no_notifications_as_approver {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_RECEIVE_NO_NOTIFICATIONS_AS_APPROVER" ;;
  }

  dimension: user_preferences_receive_notifications_as_delegated_approver {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_RECEIVE_NOTIFICATIONS_AS_DELEGATED_APPROVER" ;;
  }

  dimension: user_preferences_record_home_reserved_wtshown {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_RECORD_HOME_RESERVED_WTSHOWN" ;;
  }

  dimension: user_preferences_record_home_section_collapse_wtshown {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_RECORD_HOME_SECTION_COLLAPSE_WTSHOWN" ;;
  }

  dimension: user_preferences_reminder_sound_off {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_REMINDER_SOUND_OFF" ;;
  }

  dimension: user_preferences_show_city_to_external_users {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_SHOW_CITY_TO_EXTERNAL_USERS" ;;
  }

  dimension: user_preferences_show_city_to_guest_users {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_SHOW_CITY_TO_GUEST_USERS" ;;
  }

  dimension: user_preferences_show_country_to_external_users {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_SHOW_COUNTRY_TO_EXTERNAL_USERS" ;;
  }

  dimension: user_preferences_show_country_to_guest_users {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_SHOW_COUNTRY_TO_GUEST_USERS" ;;
  }

  dimension: user_preferences_show_email_to_external_users {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_SHOW_EMAIL_TO_EXTERNAL_USERS" ;;
  }

  dimension: user_preferences_show_email_to_guest_users {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_SHOW_EMAIL_TO_GUEST_USERS" ;;
  }

  dimension: user_preferences_show_fax_to_external_users {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_SHOW_FAX_TO_EXTERNAL_USERS" ;;
  }

  dimension: user_preferences_show_fax_to_guest_users {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_SHOW_FAX_TO_GUEST_USERS" ;;
  }

  dimension: user_preferences_show_manager_to_external_users {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_SHOW_MANAGER_TO_EXTERNAL_USERS" ;;
  }

  dimension: user_preferences_show_manager_to_guest_users {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_SHOW_MANAGER_TO_GUEST_USERS" ;;
  }

  dimension: user_preferences_show_mobile_phone_to_external_users {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_SHOW_MOBILE_PHONE_TO_EXTERNAL_USERS" ;;
  }

  dimension: user_preferences_show_mobile_phone_to_guest_users {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_SHOW_MOBILE_PHONE_TO_GUEST_USERS" ;;
  }

  dimension: user_preferences_show_postal_code_to_external_users {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_SHOW_POSTAL_CODE_TO_EXTERNAL_USERS" ;;
  }

  dimension: user_preferences_show_postal_code_to_guest_users {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_SHOW_POSTAL_CODE_TO_GUEST_USERS" ;;
  }

  dimension: user_preferences_show_profile_pic_to_guest_users {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_SHOW_PROFILE_PIC_TO_GUEST_USERS" ;;
  }

  dimension: user_preferences_show_state_to_external_users {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_SHOW_STATE_TO_EXTERNAL_USERS" ;;
  }

  dimension: user_preferences_show_state_to_guest_users {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_SHOW_STATE_TO_GUEST_USERS" ;;
  }

  dimension: user_preferences_show_street_address_to_external_users {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_SHOW_STREET_ADDRESS_TO_EXTERNAL_USERS" ;;
  }

  dimension: user_preferences_show_street_address_to_guest_users {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_SHOW_STREET_ADDRESS_TO_GUEST_USERS" ;;
  }

  dimension: user_preferences_show_title_to_external_users {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_SHOW_TITLE_TO_EXTERNAL_USERS" ;;
  }

  dimension: user_preferences_show_title_to_guest_users {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_SHOW_TITLE_TO_GUEST_USERS" ;;
  }

  dimension: user_preferences_show_work_phone_to_external_users {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_SHOW_WORK_PHONE_TO_EXTERNAL_USERS" ;;
  }

  dimension: user_preferences_show_work_phone_to_guest_users {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_SHOW_WORK_PHONE_TO_GUEST_USERS" ;;
  }

  dimension: user_preferences_sort_feed_by_comment {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_SORT_FEED_BY_COMMENT" ;;
  }

  dimension: user_preferences_srhoverride_activities {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_SRHOVERRIDE_ACTIVITIES" ;;
  }

  dimension: user_preferences_suppress_event_sfxreminders {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_SUPPRESS_EVENT_SFXREMINDERS" ;;
  }

  dimension: user_preferences_suppress_task_sfxreminders {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_SUPPRESS_TASK_SFXREMINDERS" ;;
  }

  dimension: user_preferences_task_reminders_checkbox_default {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_TASK_REMINDERS_CHECKBOX_DEFAULT" ;;
  }

  dimension: user_preferences_user_debug_mode_pref {
    type: yesno
    sql: ${TABLE}."USER_PREFERENCES_USER_DEBUG_MODE_PREF" ;;
  }

  dimension: user_role_id {
    type: string
    sql: ${TABLE}."USER_ROLE_ID" ;;
  }

  dimension: user_type {
    type: string
    sql: ${TABLE}."USER_TYPE" ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}."USERNAME" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      company_name,
      last_name,
      username,
      name,
      middle_name,
      first_name,
      sender_name,
      community_nickname,
      contact.last_name,
      contact.name,
      contact.first_name,
      contact.middle_name,
      contact.id,
      contact.assistant_name,
      account.id,
      account.name
    ]
  }
}
