view: contact {
  sql_table_name: "SALESFORCE"."CONTACT"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."ID" ;;
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

  dimension: account_executive_c {
    type: string
    sql: ${TABLE}."ACCOUNT_EXECUTIVE_C" ;;
  }

  dimension: account_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."ACCOUNT_ID" ;;
  }

  dimension: active_c {
    type: yesno
    sql: ${TABLE}."ACTIVE_C" ;;
  }

  dimension: activity_metric_id {
    type: string
    sql: ${TABLE}."ACTIVITY_METRIC_ID" ;;
  }

  dimension: ad_group_c {
    type: string
    sql: ${TABLE}."AD_GROUP_C" ;;
  }

  dimension: affiliate_2_c {
    type: string
    sql: ${TABLE}."AFFILIATE_2_C" ;;
  }

  dimension: affiliate_c {
    type: string
    sql: ${TABLE}."AFFILIATE_C" ;;
  }

  dimension: agreed_to_be_a_reference_c {
    type: yesno
    sql: ${TABLE}."AGREED_TO_BE_A_REFERENCE_C" ;;
  }

  dimension: also_involved_c {
    type: string
    sql: ${TABLE}."ALSO_INVOLVED_C" ;;
  }

  dimension: alt_phone_c {
    type: string
    sql: ${TABLE}."ALT_PHONE_C" ;;
  }

  dimension: alternate_email_1_c {
    type: string
    sql: ${TABLE}."ALTERNATE_EMAIL_1_C" ;;
  }

  dimension: alternate_email_2_c {
    type: string
    sql: ${TABLE}."ALTERNATE_EMAIL_2_C" ;;
  }

  dimension: alternate_phone_c {
    type: string
    sql: ${TABLE}."ALTERNATE_PHONE_C" ;;
  }

  dimension: asknicely_nps_comment_c {
    type: string
    sql: ${TABLE}."ASKNICELY_NPS_COMMENT_C" ;;
  }

  dimension_group: asknicely_nps_last_responded_c {
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
    sql: CAST(${TABLE}."ASKNICELY_NPS_LAST_RESPONDED_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: asknicely_nps_survey_tag_c {
    type: string
    sql: ${TABLE}."ASKNICELY_NPS_SURVEY_TAG_C" ;;
  }

  dimension: asknicely_nps_type_c {
    type: string
    sql: ${TABLE}."ASKNICELY_NPS_TYPE_C" ;;
  }

  dimension: asknicely_npsscore_c {
    type: number
    sql: ${TABLE}."ASKNICELY_NPSSCORE_C" ;;
  }

  dimension: assistant_name {
    type: string
    sql: ${TABLE}."ASSISTANT_NAME" ;;
  }

  dimension: assistant_phone {
    type: string
    sql: ${TABLE}."ASSISTANT_PHONE" ;;
  }

  dimension_group: birthdate {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."BIRTHDATE" ;;
  }

  dimension: campaign_member_c {
    type: yesno
    sql: ${TABLE}."CAMPAIGN_MEMBER_C" ;;
  }

  dimension: chat_brand_c {
    type: string
    sql: ${TABLE}."CHAT_BRAND_C" ;;
  }

  dimension_group: close_date_c {
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
    sql: CAST(${TABLE}."CLOSE_DATE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: cloudingo_agent_ces_c {
    type: number
    sql: ${TABLE}."CLOUDINGO_AGENT_CES_C" ;;
  }

  dimension: cloudingo_agent_mar_c {
    type: string
    sql: ${TABLE}."CLOUDINGO_AGENT_MAR_C" ;;
  }

  dimension: cloudingo_agent_mas_c {
    type: number
    sql: ${TABLE}."CLOUDINGO_AGENT_MAS_C" ;;
  }

  dimension: cloudingo_agent_mav_c {
    type: string
    sql: ${TABLE}."CLOUDINGO_AGENT_MAV_C" ;;
  }

  dimension: cloudingo_agent_mrdi_c {
    type: string
    sql: ${TABLE}."CLOUDINGO_AGENT_MRDI_C" ;;
  }

  dimension: cloudingo_agent_mtz_c {
    type: string
    sql: ${TABLE}."CLOUDINGO_AGENT_MTZ_C" ;;
  }

  dimension: cloudingo_agent_oar_c {
    type: string
    sql: ${TABLE}."CLOUDINGO_AGENT_OAR_C" ;;
  }

  dimension: cloudingo_agent_oas_c {
    type: number
    sql: ${TABLE}."CLOUDINGO_AGENT_OAS_C" ;;
  }

  dimension: cloudingo_agent_oav_c {
    type: string
    sql: ${TABLE}."CLOUDINGO_AGENT_OAV_C" ;;
  }

  dimension: cloudingo_agent_ordi_c {
    type: string
    sql: ${TABLE}."CLOUDINGO_AGENT_ORDI_C" ;;
  }

  dimension: cloudingo_agent_otz_c {
    type: string
    sql: ${TABLE}."CLOUDINGO_AGENT_OTZ_C" ;;
  }

  dimension: contemplating_service_campaign_member_c {
    type: yesno
    sql: ${TABLE}."CONTEMPLATING_SERVICE_CAMPAIGN_MEMBER_C" ;;
  }

  dimension: conversion_asset_c {
    type: string
    sql: ${TABLE}."CONVERSION_ASSET_C" ;;
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

  dimension: cs_lifetime_customer_value_c {
    type: number
    sql: ${TABLE}."CS_LIFETIME_CUSTOMER_VALUE_C" ;;
  }

  dimension: cs_monthly_plan_c {
    type: number
    sql: ${TABLE}."CS_MONTHLY_PLAN_C" ;;
  }

  dimension: cs_roi_c {
    type: number
    sql: ${TABLE}."CS_ROI_C" ;;
  }

  dimension: csm_referer_c {
    type: string
    sql: ${TABLE}."CSM_REFERER_C" ;;
  }

  dimension: customer_testimonial_c {
    type: string
    sql: ${TABLE}."CUSTOMER_TESTIMONIAL_C" ;;
  }

  dimension: database_source_c {
    type: string
    sql: ${TABLE}."DATABASE_SOURCE_C" ;;
  }

  dimension: days_since_last_act_trigger_c {
    type: yesno
    sql: ${TABLE}."DAYS_SINCE_LAST_ACT_TRIGGER_C" ;;
  }

  dimension_group: days_since_last_activity_c {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."DAYS_SINCE_LAST_ACTIVITY_C" ;;
  }

  dimension: demographic_fields_c {
    type: string
    sql: ${TABLE}."DEMOGRAPHIC_FIELDS_C" ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}."DEPARTMENT" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."DESCRIPTION" ;;
  }

  dimension: did_campaign_c {
    type: string
    sql: ${TABLE}."DID_CAMPAIGN_C" ;;
  }

  dimension: dnsmpi_c {
    type: yesno
    sql: ${TABLE}."DNSMPI_C" ;;
  }

  dimension: do_not_call {
    type: yesno
    sql: ${TABLE}."DO_NOT_CALL" ;;
  }

  dimension: do_not_email_c {
    type: yesno
    sql: ${TABLE}."DO_NOT_EMAIL_C" ;;
  }

  dimension: do_not_email_sales_c {
    type: yesno
    sql: ${TABLE}."DO_NOT_EMAIL_SALES_C" ;;
  }

  dimension: do_not_mail_c {
    type: yesno
    sql: ${TABLE}."DO_NOT_MAIL_C" ;;
  }

  dimension: do_not_sync_to_marketo_c {
    type: yesno
    sql: ${TABLE}."DO_NOT_SYNC_TO_MARKETO_C" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."EMAIL" ;;
  }

  dimension_group: email_bounced {
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
    sql: CAST(${TABLE}."EMAIL_BOUNCED_DATE" AS TIMESTAMP_NTZ) ;;
  }

  dimension: email_bounced_reason {
    type: string
    sql: ${TABLE}."EMAIL_BOUNCED_REASON" ;;
  }

  dimension: email_ext_id_c {
    type: string
    sql: ${TABLE}."EMAIL_EXT_ID_C" ;;
  }

  dimension: extension_c {
    type: string
    sql: ${TABLE}."EXTENSION_C" ;;
  }

  dimension: facebook_profile_c {
    type: string
    sql: ${TABLE}."FACEBOOK_PROFILE_C" ;;
  }

  dimension: fax {
    type: string
    sql: ${TABLE}."FAX" ;;
  }

  dimension_group: first_call_date {
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
    sql: CAST(${TABLE}."FIRST_CALL_DATE_TIME" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: first_date_c {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."FIRST_DATE_C" ;;
  }

  dimension_group: first_email_date {
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
    sql: CAST(${TABLE}."FIRST_EMAIL_DATE_TIME" AS TIMESTAMP_NTZ) ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}."FIRST_NAME" ;;
  }

  dimension: gclid_c {
    type: string
    sql: ${TABLE}."GCLID_C" ;;
  }

  dimension: getting_started_video_campaign_member_c {
    type: yesno
    sql: ${TABLE}."GETTING_STARTED_VIDEO_CAMPAIGN_MEMBER_C" ;;
  }

  dimension: gh_cohort_c {
    type: string
    sql: ${TABLE}."GH_COHORT_C" ;;
  }

  dimension: has_opted_out_of_email {
    type: yesno
    sql: ${TABLE}."HAS_OPTED_OUT_OF_EMAIL" ;;
  }

  dimension: has_opted_out_of_fax {
    type: yesno
    sql: ${TABLE}."HAS_OPTED_OUT_OF_FAX" ;;
  }

  dimension: has_viewed_sales_presentation_c {
    type: yesno
    sql: ${TABLE}."HAS_VIEWED_SALES_PRESENTATION_C" ;;
  }

  dimension: has_viewed_website_pricing_c {
    type: yesno
    sql: ${TABLE}."HAS_VIEWED_WEBSITE_PRICING_C" ;;
  }

  dimension: home_phone {
    type: string
    sql: ${TABLE}."HOME_PHONE" ;;
  }

  dimension: home_phone_c {
    type: string
    sql: ${TABLE}."HOME_PHONE_C" ;;
  }

  dimension: how_heard_c {
    type: string
    sql: ${TABLE}."HOW_HEARD_C" ;;
  }

  dimension: individual_id {
    type: string
    sql: ${TABLE}."INDIVIDUAL_ID" ;;
  }

  dimension: initial_contact_c {
    type: string
    sql: ${TABLE}."INITIAL_CONTACT_C" ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}."IS_DELETED" ;;
  }

  dimension: is_email_bounced {
    type: yesno
    sql: ${TABLE}."IS_EMAIL_BOUNCED" ;;
  }

  dimension: jigsaw {
    type: string
    sql: ${TABLE}."JIGSAW" ;;
  }

  dimension: jigsaw_contact_id {
    type: string
    sql: ${TABLE}."JIGSAW_CONTACT_ID" ;;
  }

  dimension: job_level_c {
    type: string
    sql: ${TABLE}."JOB_LEVEL_C" ;;
  }

  dimension_group: last_activity {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."LAST_ACTIVITY_DATE" ;;
  }

  dimension_group: last_asked_to_be_reference_c {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."LAST_ASKED_TO_BE_REFERENCE_C" ;;
  }

  dimension: last_campaign_c {
    type: string
    sql: ${TABLE}."LAST_CAMPAIGN_C" ;;
  }

  dimension_group: last_curequest {
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
    sql: CAST(${TABLE}."LAST_CUREQUEST_DATE" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: last_cuupdate {
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
    sql: CAST(${TABLE}."LAST_CUUPDATE_DATE" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: last_date_c {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."LAST_DATE_C" ;;
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

  dimension: last_touch_c {
    type: string
    sql: ${TABLE}."LAST_TOUCH_C" ;;
  }

  dimension_group: last_touch_date_c {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."LAST_TOUCH_DATE_C" ;;
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

  dimension: lead_source {
    type: string
    sql: ${TABLE}."LEAD_SOURCE" ;;
  }

  dimension: lead_source_detail_c {
    type: string
    sql: ${TABLE}."LEAD_SOURCE_DETAIL_C" ;;
  }

  dimension: lean_data_ld_segment_c {
    type: string
    sql: ${TABLE}."LEAN_DATA_LD_SEGMENT_C" ;;
  }

  dimension: lean_data_matched_buyer_persona_c {
    type: string
    sql: ${TABLE}."LEAN_DATA_MATCHED_BUYER_PERSONA_C" ;;
  }

  dimension: lean_data_modified_score_c {
    type: number
    sql: ${TABLE}."LEAN_DATA_MODIFIED_SCORE_C" ;;
  }

  dimension: lean_data_routing_action_c {
    type: string
    sql: ${TABLE}."LEAN_DATA_ROUTING_ACTION_C" ;;
  }

  dimension: lean_data_tag_c {
    type: string
    sql: ${TABLE}."LEAN_DATA_TAG_C" ;;
  }

  dimension: linked_in_profile_c {
    type: string
    sql: ${TABLE}."LINKED_IN_PROFILE_C" ;;
  }

  dimension: mailer_radio_did_c {
    type: string
    sql: ${TABLE}."MAILER_RADIO_DID_C" ;;
  }

  dimension: mailing_city {
    type: string
    sql: ${TABLE}."MAILING_CITY" ;;
  }

  dimension: mailing_country {
    type: string
    sql: ${TABLE}."MAILING_COUNTRY" ;;
  }

  dimension: mailing_geocode_accuracy {
    type: string
    sql: ${TABLE}."MAILING_GEOCODE_ACCURACY" ;;
  }

  dimension: mailing_latitude {
    type: number
    sql: ${TABLE}."MAILING_LATITUDE" ;;
  }

  dimension: mailing_longitude {
    type: number
    sql: ${TABLE}."MAILING_LONGITUDE" ;;
  }

  dimension: mailing_postal_code {
    type: string
    sql: ${TABLE}."MAILING_POSTAL_CODE" ;;
  }

  dimension: mailing_state {
    type: string
    sql: ${TABLE}."MAILING_STATE" ;;
  }

  dimension: mailing_street {
    type: string
    sql: ${TABLE}."MAILING_STREET" ;;
  }

  dimension: main_company_phone_number_c {
    type: string
    sql: ${TABLE}."MAIN_COMPANY_PHONE_NUMBER_C" ;;
  }

  dimension: marketing_fields_c {
    type: string
    sql: ${TABLE}."MARKETING_FIELDS_C" ;;
  }

  dimension: marketo_cookie_c {
    type: string
    sql: ${TABLE}."MARKETO_COOKIE_C" ;;
  }

  dimension: master_record_id {
    type: string
    sql: ${TABLE}."MASTER_RECORD_ID" ;;
  }

  dimension: middle_name {
    type: string
    sql: ${TABLE}."MIDDLE_NAME" ;;
  }

  dimension_group: mkto_71_acquisition_date_c {
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
    sql: CAST(${TABLE}."MKTO_71_ACQUISITION_DATE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: mkto_71_acquisition_program_c {
    type: string
    sql: ${TABLE}."MKTO_71_ACQUISITION_PROGRAM_C" ;;
  }

  dimension: mkto_71_lead_score_c {
    type: number
    sql: ${TABLE}."MKTO_71_LEAD_SCORE_C" ;;
  }

  dimension_group: mkto_si_hide_date_c {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."MKTO_SI_HIDE_DATE_C" ;;
  }

  dimension_group: mkto_si_last_interesting_moment_date_c {
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
    sql: CAST(${TABLE}."MKTO_SI_LAST_INTERESTING_MOMENT_DATE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: mkto_si_last_interesting_moment_desc_c {
    type: string
    sql: ${TABLE}."MKTO_SI_LAST_INTERESTING_MOMENT_DESC_C" ;;
  }

  dimension: mkto_si_last_interesting_moment_source_c {
    type: string
    sql: ${TABLE}."MKTO_SI_LAST_INTERESTING_MOMENT_SOURCE_C" ;;
  }

  dimension: mkto_si_last_interesting_moment_type_c {
    type: string
    sql: ${TABLE}."MKTO_SI_LAST_INTERESTING_MOMENT_TYPE_C" ;;
  }

  dimension: mkto_si_mkto_lead_score_c {
    type: number
    sql: ${TABLE}."MKTO_SI_MKTO_LEAD_SCORE_C" ;;
  }

  dimension: mkto_si_priority_c {
    type: number
    sql: ${TABLE}."MKTO_SI_PRIORITY_C" ;;
  }

  dimension: mkto_si_relative_score_value_c {
    type: number
    sql: ${TABLE}."MKTO_SI_RELATIVE_SCORE_VALUE_C" ;;
  }

  dimension: mkto_si_urgency_value_c {
    type: number
    sql: ${TABLE}."MKTO_SI_URGENCY_VALUE_C" ;;
  }

  dimension: mobile_phone {
    type: string
    sql: ${TABLE}."MOBILE_PHONE" ;;
  }

  dimension: mobile_phone_c {
    type: string
    sql: ${TABLE}."MOBILE_PHONE_C" ;;
  }

  dimension: most_recent_campaign_name_c {
    type: string
    sql: ${TABLE}."MOST_RECENT_CAMPAIGN_NAME_C" ;;
  }

  dimension: most_recent_resource_name_c {
    type: string
    sql: ${TABLE}."MOST_RECENT_RESOURCE_NAME_C" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: net_prospex_id_c {
    type: string
    sql: ${TABLE}."NET_PROSPEX_ID_C" ;;
  }

  dimension_group: next_activity_date_c {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."NEXT_ACTIVITY_DATE_C" ;;
  }

  dimension: notes_c {
    type: string
    sql: ${TABLE}."NOTES_C" ;;
  }

  dimension: nurture_status_c {
    type: string
    sql: ${TABLE}."NURTURE_STATUS_C" ;;
  }

  dimension: olsa_how_heard_c {
    type: string
    sql: ${TABLE}."OLSA_HOW_HEARD_C" ;;
  }

  dimension: olsa_most_recent_c {
    type: string
    sql: ${TABLE}."OLSA_MOST_RECENT_C" ;;
  }

  dimension: original_campaign_name_c {
    type: string
    sql: ${TABLE}."ORIGINAL_CAMPAIGN_NAME_C" ;;
  }

  dimension: original_resource_name_c {
    type: string
    sql: ${TABLE}."ORIGINAL_RESOURCE_NAME_C" ;;
  }

  dimension: other_city {
    type: string
    sql: ${TABLE}."OTHER_CITY" ;;
  }

  dimension: other_country {
    type: string
    sql: ${TABLE}."OTHER_COUNTRY" ;;
  }

  dimension: other_geocode_accuracy {
    type: string
    sql: ${TABLE}."OTHER_GEOCODE_ACCURACY" ;;
  }

  dimension: other_latitude {
    type: number
    sql: ${TABLE}."OTHER_LATITUDE" ;;
  }

  dimension: other_longitude {
    type: number
    sql: ${TABLE}."OTHER_LONGITUDE" ;;
  }

  dimension: other_phone {
    type: string
    sql: ${TABLE}."OTHER_PHONE" ;;
  }

  dimension: other_phone_2_c {
    type: string
    sql: ${TABLE}."OTHER_PHONE_2_C" ;;
  }

  dimension: other_postal_code {
    type: string
    sql: ${TABLE}."OTHER_POSTAL_CODE" ;;
  }

  dimension: other_state {
    type: string
    sql: ${TABLE}."OTHER_STATE" ;;
  }

  dimension: other_street {
    type: string
    sql: ${TABLE}."OTHER_STREET" ;;
  }

  dimension: override_time_zone_c {
    type: yesno
    sql: ${TABLE}."OVERRIDE_TIME_ZONE_C" ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}."OWNER_ID" ;;
  }

  dimension: partner_account_notes_c {
    type: string
    sql: ${TABLE}."PARTNER_ACCOUNT_NOTES_C" ;;
  }

  dimension: pc_customer_id_c {
    type: string
    sql: ${TABLE}."PC_CUSTOMER_ID_C" ;;
  }

  dimension_group: pendo_tcs_date_android_c {
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
    sql: CAST(${TABLE}."PENDO_TCS_DATE_ANDROID_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: pendo_tcs_date_c {
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
    sql: CAST(${TABLE}."PENDO_TCS_DATE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: pendo_tcs_date_force_c {
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
    sql: CAST(${TABLE}."PENDO_TCS_DATE_FORCE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: pendo_tcs_date_i_os_c {
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
    sql: CAST(${TABLE}."PENDO_TCS_DATE_I_OS_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}."PHONE" ;;
  }

  dimension: phone_number_c {
    type: string
    sql: ${TABLE}."PHONE_NUMBER_C" ;;
  }

  dimension: photo_url {
    type: string
    sql: ${TABLE}."PHOTO_URL" ;;
  }

  dimension: prl_contact_guid_c {
    type: string
    sql: ${TABLE}."PRL_CONTACT_GUID_C" ;;
  }

  dimension: prl_contact_id_c {
    type: number
    value_format_name: id
    sql: ${TABLE}."PRL_CONTACT_ID_C" ;;
  }

  dimension: product_type_c {
    type: string
    sql: ${TABLE}."PRODUCT_TYPE_C" ;;
  }

  dimension: promo_code_c {
    type: string
    sql: ${TABLE}."PROMO_CODE_C" ;;
  }

  dimension: rdnacadence_cadence_id_c {
    type: string
    sql: ${TABLE}."RDNACADENCE_CADENCE_ID_C" ;;
  }

  dimension: rdnacadence_cadence_performed_c {
    type: yesno
    sql: ${TABLE}."RDNACADENCE_CADENCE_PERFORMED_C" ;;
  }

  dimension_group: rdnacadence_entrance_criteria_matched_date_c {
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
    sql: CAST(${TABLE}."RDNACADENCE_ENTRANCE_CRITERIA_MATCHED_DATE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: rdnacadence_is_activated_c {
    type: yesno
    sql: ${TABLE}."RDNACADENCE_IS_ACTIVATED_C" ;;
  }

  dimension: rdnacadence_languages_c {
    type: string
    sql: ${TABLE}."RDNACADENCE_LANGUAGES_C" ;;
  }

  dimension: rdnacadence_number_of_deferred_sequence_actions_c {
    type: number
    sql: ${TABLE}."RDNACADENCE_NUMBER_OF_DEFERRED_SEQUENCE_ACTIONS_C" ;;
  }

  dimension: rdnacadence_number_of_performed_sequence_actions_c {
    type: number
    sql: ${TABLE}."RDNACADENCE_NUMBER_OF_PERFORMED_SEQUENCE_ACTIONS_C" ;;
  }

  dimension: rdnacadence_number_of_sequence_emails_sent_c {
    type: number
    sql: ${TABLE}."RDNACADENCE_NUMBER_OF_SEQUENCE_EMAILS_SENT_C" ;;
  }

  dimension: rdnacadence_number_of_sequence_emails_to_opened_c {
    type: number
    sql: ${TABLE}."RDNACADENCE_NUMBER_OF_SEQUENCE_EMAILS_TO_OPENED_C" ;;
  }

  dimension: rdnacadence_number_of_sequence_emails_to_reply_c {
    type: number
    sql: ${TABLE}."RDNACADENCE_NUMBER_OF_SEQUENCE_EMAILS_TO_REPLY_C" ;;
  }

  dimension: rdnacadence_opened_sequence_email_c {
    type: yesno
    sql: ${TABLE}."RDNACADENCE_OPENED_SEQUENCE_EMAIL_C" ;;
  }

  dimension: rdnacadence_opportunity_id_c {
    type: string
    sql: ${TABLE}."RDNACADENCE_OPPORTUNITY_ID_C" ;;
  }

  dimension: rdnacadence_priority_c {
    type: number
    sql: ${TABLE}."RDNACADENCE_PRIORITY_C" ;;
  }

  dimension: rdnacadence_replied_to_sequence_email_c {
    type: yesno
    sql: ${TABLE}."RDNACADENCE_REPLIED_TO_SEQUENCE_EMAIL_C" ;;
  }

  dimension: record_source_c {
    type: string
    sql: ${TABLE}."RECORD_SOURCE_C" ;;
  }

  dimension: record_type_id {
    type: string
    sql: ${TABLE}."RECORD_TYPE_ID" ;;
  }

  dimension: reference_notes_c {
    type: string
    sql: ${TABLE}."REFERENCE_NOTES_C" ;;
  }

  dimension: referrer_sfdc_account_id_c {
    type: string
    sql: ${TABLE}."REFERRER_SFDC_ACCOUNT_ID_C" ;;
  }

  dimension: referring_email_c {
    type: string
    sql: ${TABLE}."REFERRING_EMAIL_C" ;;
  }

  dimension: referring_name_c {
    type: string
    sql: ${TABLE}."REFERRING_NAME_C" ;;
  }

  dimension: reports_to_id {
    type: string
    sql: ${TABLE}."REPORTS_TO_ID" ;;
  }

  dimension: responsible_party_c {
    type: string
    sql: ${TABLE}."RESPONSIBLE_PARTY_C" ;;
  }

  dimension: ringdna_100_call_attempts_c {
    type: number
    sql: ${TABLE}."RINGDNA_100_CALL_ATTEMPTS_C" ;;
  }

  dimension: ringdna_100_email_attempts_c {
    type: number
    sql: ${TABLE}."RINGDNA_100_EMAIL_ATTEMPTS_C" ;;
  }

  dimension_group: ringdna_100_first_inbound_call_c {
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
    sql: CAST(${TABLE}."RINGDNA_100_FIRST_INBOUND_CALL_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: ringdna_100_first_inbound_message_c {
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
    sql: CAST(${TABLE}."RINGDNA_100_FIRST_INBOUND_MESSAGE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: ringdna_100_first_outbound_call_c {
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
    sql: CAST(${TABLE}."RINGDNA_100_FIRST_OUTBOUND_CALL_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: ringdna_100_first_outbound_message_c {
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
    sql: CAST(${TABLE}."RINGDNA_100_FIRST_OUTBOUND_MESSAGE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: ringdna_100_last_email_attempt_c {
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
    sql: CAST(${TABLE}."RINGDNA_100_LAST_EMAIL_ATTEMPT_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: ringdna_100_last_inbound_call_c {
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
    sql: CAST(${TABLE}."RINGDNA_100_LAST_INBOUND_CALL_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: ringdna_100_last_inbound_message_c {
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
    sql: CAST(${TABLE}."RINGDNA_100_LAST_INBOUND_MESSAGE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: ringdna_100_last_outbound_call_c {
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
    sql: CAST(${TABLE}."RINGDNA_100_LAST_OUTBOUND_CALL_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: ringdna_100_last_outbound_message_c {
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
    sql: CAST(${TABLE}."RINGDNA_100_LAST_OUTBOUND_MESSAGE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension: ringdna_100_message_attempts_c {
    type: number
    sql: ${TABLE}."RINGDNA_100_MESSAGE_ATTEMPTS_C" ;;
  }

  dimension: ringdna_100_response_type_c {
    type: string
    sql: ${TABLE}."RINGDNA_100_RESPONSE_TYPE_C" ;;
  }

  dimension: ringdna_100_ring_dna_context_c {
    type: yesno
    sql: ${TABLE}."RINGDNA_100_RING_DNA_CONTEXT_C" ;;
  }

  dimension: ringdna_100_time_to_first_dial_minutes_c {
    type: number
    sql: ${TABLE}."RINGDNA_100_TIME_TO_FIRST_DIAL_MINUTES_C" ;;
  }

  dimension: ringdna_100_time_to_first_response_c {
    type: number
    sql: ${TABLE}."RINGDNA_100_TIME_TO_FIRST_RESPONSE_C" ;;
  }

  dimension: ringdna_has_opted_out_of_sms_c {
    type: yesno
    sql: ${TABLE}."RINGDNA_HAS_OPTED_OUT_OF_SMS_C" ;;
  }

  dimension: rs_lifetime_customer_value_c {
    type: number
    sql: ${TABLE}."RS_LIFETIME_CUSTOMER_VALUE_C" ;;
  }

  dimension: rs_monthly_plan_c {
    type: number
    sql: ${TABLE}."RS_MONTHLY_PLAN_C" ;;
  }

  dimension: rs_roi_c {
    type: number
    sql: ${TABLE}."RS_ROI_C" ;;
  }

  dimension: salutation {
    type: string
    sql: ${TABLE}."SALUTATION" ;;
  }

  dimension: sdr_checked_c {
    type: yesno
    sql: ${TABLE}."SDR_CHECKED_C" ;;
  }

  dimension: search_term_c {
    type: string
    sql: ${TABLE}."SEARCH_TERM_C" ;;
  }

  dimension: secondary_email_c {
    type: string
    sql: ${TABLE}."SECONDARY_EMAIL_C" ;;
  }

  dimension: stage_of_research_c {
    type: string
    sql: ${TABLE}."STAGE_OF_RESEARCH_C" ;;
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

  dimension_group: t_c_accepted_date_c {
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
    sql: CAST(${TABLE}."T_C_ACCEPTED_DATE_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: tcs_last_accepted_c {
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
    sql: CAST(${TABLE}."TCS_LAST_ACCEPTED_C" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: testimonial_date_c {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."TESTIMONIAL_DATE_C" ;;
  }

  dimension: time_zone_c {
    type: string
    sql: ${TABLE}."TIME_ZONE_C" ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}."TITLE" ;;
  }

  dimension: twitter_profile_c {
    type: string
    sql: ${TABLE}."TWITTER_PROFILE_C" ;;
  }

  dimension: utm_campaign_c {
    type: string
    sql: ${TABLE}."UTM_CAMPAIGN_C" ;;
  }

  dimension: utm_campaign_history_c {
    type: string
    sql: ${TABLE}."UTM_CAMPAIGN_HISTORY_C" ;;
  }

  dimension: utm_campaign_most_recent_c {
    type: string
    sql: ${TABLE}."UTM_CAMPAIGN_MOST_RECENT_C" ;;
  }

  dimension: utm_content_c {
    type: string
    sql: ${TABLE}."UTM_CONTENT_C" ;;
  }

  dimension: utm_medium_c {
    type: string
    sql: ${TABLE}."UTM_MEDIUM_C" ;;
  }

  dimension: utm_term_c {
    type: string
    sql: ${TABLE}."UTM_TERM_C" ;;
  }

  dimension: utm_vertical_c {
    type: string
    sql: ${TABLE}."UTM_VERTICAL_C" ;;
  }

  dimension: web_form_comments_c {
    type: string
    sql: ${TABLE}."WEB_FORM_COMMENTS_C" ;;
  }

  dimension: zqu_county_c {
    type: string
    sql: ${TABLE}."ZQU_COUNTY_C" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      assistant_name,
      last_name,
      name,
      middle_name,
      first_name,
      account.referrer_sfdc_account_id_c,
      account.name,
      case.count,
      opportunity.count
    ]
  }
}
