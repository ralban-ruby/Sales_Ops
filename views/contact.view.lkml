view: contact {
    derived_table: {
      sql: SELECT * FROM FIVETRAN_DB.SALESFORCE.CONTACT WHERE IS_DELETED <> 1
        ;;
    }

    measure: count {
      type: count
      drill_fields: [detail*]
    }

    dimension: id {
      type: string
      sql: ${TABLE}."ID" ;;
    }

    dimension: is_deleted {
      type: yesno
      sql: ${TABLE}."IS_DELETED" ;;
    }

    dimension: master_record_id {
      type: string
      sql: ${TABLE}."MASTER_RECORD_ID" ;;
    }

    dimension: account_id {
      type: string
      sql: ${TABLE}."ACCOUNT_ID" ;;
    }

    dimension: last_name {
      type: string
      sql: ${TABLE}."LAST_NAME" ;;
    }

    dimension: first_name {
      type: string
      sql: ${TABLE}."FIRST_NAME" ;;
    }

    dimension: salutation {
      type: string
      sql: ${TABLE}."SALUTATION" ;;
    }

    dimension: middle_name {
      type: string
      sql: ${TABLE}."MIDDLE_NAME" ;;
    }

    dimension: name {
      type: string
      sql: ${TABLE}."NAME" ;;
    }

    dimension: record_type_id {
      type: string
      sql: ${TABLE}."RECORD_TYPE_ID" ;;
    }

    dimension: mailing_street {
      type: string
      sql: ${TABLE}."MAILING_STREET" ;;
    }

    dimension: mailing_city {
      type: string
      sql: ${TABLE}."MAILING_CITY" ;;
    }

    dimension: mailing_state {
      type: string
      sql: ${TABLE}."MAILING_STATE" ;;
    }

    dimension: mailing_postal_code {
      type: string
      sql: ${TABLE}."MAILING_POSTAL_CODE" ;;
    }

    dimension: mailing_country {
      type: string
      sql: ${TABLE}."MAILING_COUNTRY" ;;
    }

    dimension: mailing_latitude {
      type: number
      sql: ${TABLE}."MAILING_LATITUDE" ;;
    }

    dimension: mailing_longitude {
      type: number
      sql: ${TABLE}."MAILING_LONGITUDE" ;;
    }

    dimension: mailing_geocode_accuracy {
      type: string
      sql: ${TABLE}."MAILING_GEOCODE_ACCURACY" ;;
    }

    dimension: phone {
      type: string
      sql: ${TABLE}."PHONE" ;;
    }

    dimension: fax {
      type: string
      sql: ${TABLE}."FAX" ;;
    }

    dimension: mobile_phone {
      type: string
      sql: ${TABLE}."MOBILE_PHONE" ;;
    }

    dimension: home_phone {
      type: string
      sql: ${TABLE}."HOME_PHONE" ;;
    }

    dimension: other_phone {
      type: string
      sql: ${TABLE}."OTHER_PHONE" ;;
    }

    dimension: reports_to_id {
      type: string
      sql: ${TABLE}."REPORTS_TO_ID" ;;
    }

    dimension: email {
      type: string
      sql: ${TABLE}."EMAIL" ;;
    }

    dimension: title {
      type: string
      sql: ${TABLE}."TITLE" ;;
    }

    dimension: department {
      type: string
      sql: ${TABLE}."DEPARTMENT" ;;
    }

    dimension: owner_id {
      type: string
      sql: ${TABLE}."OWNER_ID" ;;
    }

    dimension_group: created_date {
      type: time
      sql: ${TABLE}."CREATED_DATE" ;;
    }

    dimension: created_by_id {
      type: string
      sql: ${TABLE}."CREATED_BY_ID" ;;
    }

    dimension_group: last_modified_date {
      type: time
      sql: ${TABLE}."LAST_MODIFIED_DATE" ;;
    }

    dimension: last_modified_by_id {
      type: string
      sql: ${TABLE}."LAST_MODIFIED_BY_ID" ;;
    }

    dimension_group: system_modstamp {
      type: time
      sql: ${TABLE}."SYSTEM_MODSTAMP" ;;
    }

    dimension: last_activity_date {
      type: date
      sql: ${TABLE}."LAST_ACTIVITY_DATE" ;;
    }

    dimension_group: last_curequest_date {
      type: time
      sql: ${TABLE}."LAST_CUREQUEST_DATE" ;;
    }

    dimension_group: last_cuupdate_date {
      type: time
      sql: ${TABLE}."LAST_CUUPDATE_DATE" ;;
    }

    dimension_group: last_viewed_date {
      type: time
      sql: ${TABLE}."LAST_VIEWED_DATE" ;;
    }

    dimension_group: last_referenced_date {
      type: time
      sql: ${TABLE}."LAST_REFERENCED_DATE" ;;
    }

    dimension: email_bounced_reason {
      type: string
      sql: ${TABLE}."EMAIL_BOUNCED_REASON" ;;
    }

    dimension_group: email_bounced_date {
      type: time
      sql: ${TABLE}."EMAIL_BOUNCED_DATE" ;;
    }

    dimension: is_email_bounced {
      type: yesno
      sql: ${TABLE}."IS_EMAIL_BOUNCED" ;;
    }

    dimension: photo_url {
      type: string
      sql: ${TABLE}."PHOTO_URL" ;;
    }

    dimension: jigsaw_contact_id {
      type: string
      sql: ${TABLE}."JIGSAW_CONTACT_ID" ;;
    }

    dimension: alt_phone_c {
      type: string
      sql: ${TABLE}."ALT_PHONE_C" ;;
    }

    dimension: marketo_cookie_c {
      type: string
      sql: ${TABLE}."MARKETO_COOKIE_C" ;;
    }

    dimension: extension_c {
      type: string
      sql: ${TABLE}."EXTENSION_C" ;;
    }

    dimension: did_campaign_c {
      type: string
      sql: ${TABLE}."DID_CAMPAIGN_C" ;;
    }

    dimension: alternate_phone_c {
      type: string
      sql: ${TABLE}."ALTERNATE_PHONE_C" ;;
    }

    dimension: prl_contact_guid_c {
      type: string
      sql: ${TABLE}."PRL_CONTACT_GUID_C" ;;
    }

    dimension: prl_contact_id_c {
      type: number
      sql: ${TABLE}."PRL_CONTACT_ID_C" ;;
    }

    dimension: alternate_email_1_c {
      type: string
      sql: ${TABLE}."ALTERNATE_EMAIL_1_C" ;;
    }

    dimension: alternate_email_2_c {
      type: string
      sql: ${TABLE}."ALTERNATE_EMAIL_2_C" ;;
    }

    dimension: gclid_c {
      type: string
      sql: ${TABLE}."GCLID_C" ;;
    }

    dimension: partner_account_notes_c {
      type: string
      sql: ${TABLE}."PARTNER_ACCOUNT_NOTES_C" ;;
    }

    dimension_group: close_date_c {
      type: time
      sql: ${TABLE}."CLOSE_DATE_C" ;;
    }

    dimension: olsa_how_heard_c {
      type: string
      sql: ${TABLE}."OLSA_HOW_HEARD_C" ;;
    }

    dimension: most_recent_campaign_name_c {
      type: string
      sql: ${TABLE}."MOST_RECENT_CAMPAIGN_NAME_C" ;;
    }

    dimension: most_recent_resource_name_c {
      type: string
      sql: ${TABLE}."MOST_RECENT_RESOURCE_NAME_C" ;;
    }

    dimension: active_c {
      type: yesno
      sql: ${TABLE}."ACTIVE_C" ;;
    }

    dimension: how_heard_c {
      type: string
      sql: ${TABLE}."HOW_HEARD_C" ;;
    }

    dimension: responsible_party_c {
      type: string
      sql: ${TABLE}."RESPONSIBLE_PARTY_C" ;;
    }

    dimension: do_not_email_c {
      type: yesno
      sql: ${TABLE}."DO_NOT_EMAIL_C" ;;
    }

    dimension: facebook_profile_c {
      type: string
      sql: ${TABLE}."FACEBOOK_PROFILE_C" ;;
    }

    dimension: home_phone_c {
      type: string
      sql: ${TABLE}."HOME_PHONE_C" ;;
    }

    dimension: initial_contact_c {
      type: string
      sql: ${TABLE}."INITIAL_CONTACT_C" ;;
    }

    dimension: job_level_c {
      type: string
      sql: ${TABLE}."JOB_LEVEL_C" ;;
    }

    dimension: lead_source_detail_c {
      type: string
      sql: ${TABLE}."LEAD_SOURCE_DETAIL_C" ;;
    }

    dimension: linked_in_profile_c {
      type: string
      sql: ${TABLE}."LINKED_IN_PROFILE_C" ;;
    }

    dimension: mailer_radio_did_c {
      type: string
      sql: ${TABLE}."MAILER_RADIO_DID_C" ;;
    }

    dimension: mobile_phone_c {
      type: string
      sql: ${TABLE}."MOBILE_PHONE_C" ;;
    }

    dimension: net_prospex_id_c {
      type: string
      sql: ${TABLE}."NET_PROSPEX_ID_C" ;;
    }

    dimension: notes_c {
      type: string
      sql: ${TABLE}."NOTES_C" ;;
    }

    dimension: original_campaign_name_c {
      type: string
      sql: ${TABLE}."ORIGINAL_CAMPAIGN_NAME_C" ;;
    }

    dimension: original_resource_name_c {
      type: string
      sql: ${TABLE}."ORIGINAL_RESOURCE_NAME_C" ;;
    }

    dimension: phone_number_c {
      type: string
      sql: ${TABLE}."PHONE_NUMBER_C" ;;
    }

    dimension: record_source_c {
      type: string
      sql: ${TABLE}."RECORD_SOURCE_C" ;;
    }

    dimension: sdr_checked_c {
      type: yesno
      sql: ${TABLE}."SDR_CHECKED_C" ;;
    }

    dimension: time_zone_c {
      type: string
      sql: ${TABLE}."TIME_ZONE_C" ;;
    }

    dimension: twitter_profile_c {
      type: string
      sql: ${TABLE}."TWITTER_PROFILE_C" ;;
    }

    dimension: web_form_comments_c {
      type: string
      sql: ${TABLE}."WEB_FORM_COMMENTS_C" ;;
    }

    dimension: also_involved_c {
      type: string
      sql: ${TABLE}."ALSO_INVOLVED_C" ;;
    }

    dimension: main_company_phone_number_c {
      type: string
      sql: ${TABLE}."MAIN_COMPANY_PHONE_NUMBER_C" ;;
    }

    dimension: do_not_sync_to_marketo_c {
      type: yesno
      sql: ${TABLE}."DO_NOT_SYNC_TO_MARKETO_C" ;;
    }

    dimension: do_not_mail_c {
      type: yesno
      sql: ${TABLE}."DO_NOT_MAIL_C" ;;
    }

    dimension: mkto_71_lead_score_c {
      type: number
      sql: ${TABLE}."MKTO_71_LEAD_SCORE_C" ;;
    }

    dimension_group: mkto_71_acquisition_date_c {
      type: time
      sql: ${TABLE}."MKTO_71_ACQUISITION_DATE_C" ;;
    }

    dimension: mkto_71_acquisition_program_c {
      type: string
      sql: ${TABLE}."MKTO_71_ACQUISITION_PROGRAM_C" ;;
    }

    dimension: mkto_si_hide_date_c {
      type: date
      sql: ${TABLE}."MKTO_SI_HIDE_DATE_C" ;;
    }

    dimension_group: mkto_si_last_interesting_moment_date_c {
      type: time
      sql: ${TABLE}."MKTO_SI_LAST_INTERESTING_MOMENT_DATE_C" ;;
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

    dimension_group: asknicely_nps_last_responded_c {
      type: time
      sql: ${TABLE}."ASKNICELY_NPS_LAST_RESPONDED_C" ;;
    }

    dimension: asknicely_nps_survey_tag_c {
      type: string
      sql: ${TABLE}."ASKNICELY_NPS_SURVEY_TAG_C" ;;
    }

    dimension: asknicely_nps_type_c {
      type: string
      sql: ${TABLE}."ASKNICELY_NPS_TYPE_C" ;;
    }

    dimension: asknicely_nps_comment_c {
      type: string
      sql: ${TABLE}."ASKNICELY_NPS_COMMENT_C" ;;
    }

    dimension: asknicely_npsscore_c {
      type: number
      sql: ${TABLE}."ASKNICELY_NPSSCORE_C" ;;
    }

    dimension: chat_brand_c {
      type: string
      sql: ${TABLE}."CHAT_BRAND_C" ;;
    }

    dimension: account_executive_c {
      type: string
      sql: ${TABLE}."ACCOUNT_EXECUTIVE_C" ;;
    }

    dimension: affiliate_2_c {
      type: string
      sql: ${TABLE}."AFFILIATE_2_C" ;;
    }

    dimension: affiliate_c {
      type: string
      sql: ${TABLE}."AFFILIATE_C" ;;
    }

    dimension: campaign_member_c {
      type: yesno
      sql: ${TABLE}."CAMPAIGN_MEMBER_C" ;;
    }

    dimension: contemplating_service_campaign_member_c {
      type: yesno
      sql: ${TABLE}."CONTEMPLATING_SERVICE_CAMPAIGN_MEMBER_C" ;;
    }

    dimension: email_ext_id_c {
      type: string
      sql: ${TABLE}."EMAIL_EXT_ID_C" ;;
    }

    dimension: getting_started_video_campaign_member_c {
      type: yesno
      sql: ${TABLE}."GETTING_STARTED_VIDEO_CAMPAIGN_MEMBER_C" ;;
    }

    dimension: secondary_email_c {
      type: string
      sql: ${TABLE}."SECONDARY_EMAIL_C" ;;
    }

    dimension: pc_customer_id_c {
      type: string
      sql: ${TABLE}."PC_CUSTOMER_ID_C" ;;
    }

    dimension: product_type_c {
      type: string
      sql: ${TABLE}."PRODUCT_TYPE_C" ;;
    }

    dimension: zqu_county_c {
      type: string
      sql: ${TABLE}."ZQU_COUNTY_C" ;;
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

    dimension: ad_group_c {
      type: string
      sql: ${TABLE}."AD_GROUP_C" ;;
    }

    dimension: conversion_asset_c {
      type: string
      sql: ${TABLE}."CONVERSION_ASSET_C" ;;
    }

    dimension: has_viewed_sales_presentation_c {
      type: yesno
      sql: ${TABLE}."HAS_VIEWED_SALES_PRESENTATION_C" ;;
    }

    dimension: has_viewed_website_pricing_c {
      type: yesno
      sql: ${TABLE}."HAS_VIEWED_WEBSITE_PRICING_C" ;;
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

    dimension: first_date_c {
      type: date
      sql: ${TABLE}."FIRST_DATE_C" ;;
    }

    dimension: last_campaign_c {
      type: string
      sql: ${TABLE}."LAST_CAMPAIGN_C" ;;
    }

    dimension: last_date_c {
      type: date
      sql: ${TABLE}."LAST_DATE_C" ;;
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

    dimension: last_touch_c {
      type: string
      sql: ${TABLE}."LAST_TOUCH_C" ;;
    }

    dimension: last_touch_date_c {
      type: date
      sql: ${TABLE}."LAST_TOUCH_DATE_C" ;;
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

    dimension_group: t_c_accepted_date_c {
      type: time
      sql: ${TABLE}."T_C_ACCEPTED_DATE_C" ;;
    }

    dimension: gh_cohort_c {
      type: string
      sql: ${TABLE}."GH_COHORT_C" ;;
    }

    dimension: database_source_c {
      type: string
      sql: ${TABLE}."DATABASE_SOURCE_C" ;;
    }

    dimension: demographic_fields_c {
      type: string
      sql: ${TABLE}."DEMOGRAPHIC_FIELDS_C" ;;
    }

    dimension: marketing_fields_c {
      type: string
      sql: ${TABLE}."MARKETING_FIELDS_C" ;;
    }

    dimension_group: _fivetran_synced {
      type: time
      sql: ${TABLE}."_FIVETRAN_SYNCED" ;;
    }

    dimension: individual_id {
      type: string
      sql: ${TABLE}."INDIVIDUAL_ID" ;;
    }

    dimension: csm_referer_c {
      type: string
      sql: ${TABLE}."CSM_REFERER_C" ;;
    }

    dimension: utm_vertical_c {
      type: string
      sql: ${TABLE}."UTM_VERTICAL_C" ;;
    }

    dimension: stage_of_research_c {
      type: string
      sql: ${TABLE}."STAGE_OF_RESEARCH_C" ;;
    }

    dimension: activity_metric_id {
      type: string
      sql: ${TABLE}."ACTIVITY_METRIC_ID" ;;
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

    dimension: lean_data_routing_action_c {
      type: string
      sql: ${TABLE}."LEAN_DATA_ROUTING_ACTION_C" ;;
    }

    dimension: lean_data_matched_buyer_persona_c {
      type: string
      sql: ${TABLE}."LEAN_DATA_MATCHED_BUYER_PERSONA_C" ;;
    }

    dimension: lean_data_ld_segment_c {
      type: string
      sql: ${TABLE}."LEAN_DATA_LD_SEGMENT_C" ;;
    }

    dimension: lean_data_tag_c {
      type: string
      sql: ${TABLE}."LEAN_DATA_TAG_C" ;;
    }

    dimension: lean_data_modified_score_c {
      type: number
      sql: ${TABLE}."LEAN_DATA_MODIFIED_SCORE_C" ;;
    }

    dimension: do_not_email_sales_c {
      type: yesno
      sql: ${TABLE}."DO_NOT_EMAIL_SALES_C" ;;
    }

    dimension: olsa_most_recent_c {
      type: string
      sql: ${TABLE}."OLSA_MOST_RECENT_C" ;;
    }

    dimension: lead_source {
      type: string
      sql: ${TABLE}."LEAD_SOURCE" ;;
    }

    dimension_group: ringdna_100_last_email_attempt_c {
      type: time
      sql: ${TABLE}."RINGDNA_100_LAST_EMAIL_ATTEMPT_C" ;;
    }

    dimension: ringdna_100_email_attempts_c {
      type: number
      sql: ${TABLE}."RINGDNA_100_EMAIL_ATTEMPTS_C" ;;
    }

    dimension_group: ringdna_100_first_outbound_message_c {
      type: time
      sql: ${TABLE}."RINGDNA_100_FIRST_OUTBOUND_MESSAGE_C" ;;
    }

    dimension: ringdna_100_ring_dna_context_c {
      type: yesno
      sql: ${TABLE}."RINGDNA_100_RING_DNA_CONTEXT_C" ;;
    }

    dimension_group: ringdna_100_last_inbound_call_c {
      type: time
      sql: ${TABLE}."RINGDNA_100_LAST_INBOUND_CALL_C" ;;
    }

    dimension_group: ringdna_100_first_inbound_call_c {
      type: time
      sql: ${TABLE}."RINGDNA_100_FIRST_INBOUND_CALL_C" ;;
    }

    dimension: ringdna_100_message_attempts_c {
      type: number
      sql: ${TABLE}."RINGDNA_100_MESSAGE_ATTEMPTS_C" ;;
    }

    dimension: ringdna_100_time_to_first_dial_minutes_c {
      type: number
      sql: ${TABLE}."RINGDNA_100_TIME_TO_FIRST_DIAL_MINUTES_C" ;;
    }

    dimension: ringdna_100_response_type_c {
      type: string
      sql: ${TABLE}."RINGDNA_100_RESPONSE_TYPE_C" ;;
    }

    dimension_group: ringdna_100_first_inbound_message_c {
      type: time
      sql: ${TABLE}."RINGDNA_100_FIRST_INBOUND_MESSAGE_C" ;;
    }

    dimension_group: ringdna_100_last_inbound_message_c {
      type: time
      sql: ${TABLE}."RINGDNA_100_LAST_INBOUND_MESSAGE_C" ;;
    }

    dimension_group: ringdna_100_first_outbound_call_c {
      type: time
      sql: ${TABLE}."RINGDNA_100_FIRST_OUTBOUND_CALL_C" ;;
    }

    dimension: ringdna_100_time_to_first_response_c {
      type: number
      sql: ${TABLE}."RINGDNA_100_TIME_TO_FIRST_RESPONSE_C" ;;
    }

    dimension_group: ringdna_100_last_outbound_call_c {
      type: time
      sql: ${TABLE}."RINGDNA_100_LAST_OUTBOUND_CALL_C" ;;
    }

    dimension: ringdna_has_opted_out_of_sms_c {
      type: yesno
      sql: ${TABLE}."RINGDNA_HAS_OPTED_OUT_OF_SMS_C" ;;
    }

    dimension_group: ringdna_100_last_outbound_message_c {
      type: time
      sql: ${TABLE}."RINGDNA_100_LAST_OUTBOUND_MESSAGE_C" ;;
    }

    dimension: ringdna_100_call_attempts_c {
      type: number
      sql: ${TABLE}."RINGDNA_100_CALL_ATTEMPTS_C" ;;
    }

    dimension: rdnacadence_cadence_performed_c {
      type: yesno
      sql: ${TABLE}."RDNACADENCE_CADENCE_PERFORMED_C" ;;
    }

    dimension: rdnacadence_replied_to_sequence_email_c {
      type: yesno
      sql: ${TABLE}."RDNACADENCE_REPLIED_TO_SEQUENCE_EMAIL_C" ;;
    }

    dimension: rdnacadence_cadence_id_c {
      type: string
      sql: ${TABLE}."RDNACADENCE_CADENCE_ID_C" ;;
    }

    dimension: rdnacadence_number_of_performed_sequence_actions_c {
      type: number
      sql: ${TABLE}."RDNACADENCE_NUMBER_OF_PERFORMED_SEQUENCE_ACTIONS_C" ;;
    }

    dimension: rdnacadence_is_activated_c {
      type: yesno
      sql: ${TABLE}."RDNACADENCE_IS_ACTIVATED_C" ;;
    }

    dimension: rdnacadence_number_of_sequence_emails_sent_c {
      type: number
      sql: ${TABLE}."RDNACADENCE_NUMBER_OF_SEQUENCE_EMAILS_SENT_C" ;;
    }

    dimension: rdnacadence_languages_c {
      type: string
      sql: ${TABLE}."RDNACADENCE_LANGUAGES_C" ;;
    }

    dimension: rdnacadence_priority_c {
      type: number
      sql: ${TABLE}."RDNACADENCE_PRIORITY_C" ;;
    }

    dimension: rdnacadence_number_of_deferred_sequence_actions_c {
      type: number
      sql: ${TABLE}."RDNACADENCE_NUMBER_OF_DEFERRED_SEQUENCE_ACTIONS_C" ;;
    }

    dimension_group: rdnacadence_entrance_criteria_matched_date_c {
      type: time
      sql: ${TABLE}."RDNACADENCE_ENTRANCE_CRITERIA_MATCHED_DATE_C" ;;
    }

    dimension: rdnacadence_opportunity_id_c {
      type: string
      sql: ${TABLE}."RDNACADENCE_OPPORTUNITY_ID_C" ;;
    }

    dimension: rdnacadence_number_of_sequence_emails_to_reply_c {
      type: number
      sql: ${TABLE}."RDNACADENCE_NUMBER_OF_SEQUENCE_EMAILS_TO_REPLY_C" ;;
    }

    dimension: rdnacadence_opened_sequence_email_c {
      type: yesno
      sql: ${TABLE}."RDNACADENCE_OPENED_SEQUENCE_EMAIL_C" ;;
    }

    dimension: rdnacadence_number_of_sequence_emails_to_opened_c {
      type: number
      sql: ${TABLE}."RDNACADENCE_NUMBER_OF_SEQUENCE_EMAILS_TO_OPENED_C" ;;
    }

    dimension: other_state {
      type: string
      sql: ${TABLE}."OTHER_STATE" ;;
    }

    dimension: other_city {
      type: string
      sql: ${TABLE}."OTHER_CITY" ;;
    }

    dimension: search_term_c {
      type: string
      sql: ${TABLE}."SEARCH_TERM_C" ;;
    }

    dimension: birthdate {
      type: date
      sql: ${TABLE}."BIRTHDATE" ;;
    }

    dimension: has_opted_out_of_fax {
      type: yesno
      sql: ${TABLE}."HAS_OPTED_OUT_OF_FAX" ;;
    }

    dimension: next_activity_date_c {
      type: date
      sql: ${TABLE}."NEXT_ACTIVITY_DATE_C" ;;
    }

    dimension: description {
      type: string
      sql: ${TABLE}."DESCRIPTION" ;;
    }

    dimension: other_phone_2_c {
      type: string
      sql: ${TABLE}."OTHER_PHONE_2_C" ;;
    }

    dimension: other_latitude {
      type: number
      sql: ${TABLE}."OTHER_LATITUDE" ;;
    }

    dimension: other_geocode_accuracy {
      type: string
      sql: ${TABLE}."OTHER_GEOCODE_ACCURACY" ;;
    }

    dimension: assistant_name {
      type: string
      sql: ${TABLE}."ASSISTANT_NAME" ;;
    }

    dimension: other_postal_code {
      type: string
      sql: ${TABLE}."OTHER_POSTAL_CODE" ;;
    }

    dimension: other_country {
      type: string
      sql: ${TABLE}."OTHER_COUNTRY" ;;
    }

    dimension: assistant_phone {
      type: string
      sql: ${TABLE}."ASSISTANT_PHONE" ;;
    }

    dimension: jigsaw {
      type: string
      sql: ${TABLE}."JIGSAW" ;;
    }

    dimension: other_street {
      type: string
      sql: ${TABLE}."OTHER_STREET" ;;
    }

    dimension: other_longitude {
      type: number
      sql: ${TABLE}."OTHER_LONGITUDE" ;;
    }

    dimension: do_not_call {
      type: yesno
      sql: ${TABLE}."DO_NOT_CALL" ;;
    }

    dimension: has_opted_out_of_email {
      type: yesno
      sql: ${TABLE}."HAS_OPTED_OUT_OF_EMAIL" ;;
    }

    dimension: customer_testimonial_c {
      type: string
      sql: ${TABLE}."CUSTOMER_TESTIMONIAL_C" ;;
    }

    dimension: testimonial_date_c {
      type: date
      sql: ${TABLE}."TESTIMONIAL_DATE_C" ;;
    }

    dimension_group: tcs_last_accepted_c {
      type: time
      sql: ${TABLE}."TCS_LAST_ACCEPTED_C" ;;
    }

    dimension: dnsmpi_c {
      type: yesno
      sql: ${TABLE}."DNSMPI_C" ;;
    }

    dimension: override_time_zone_c {
      type: yesno
      sql: ${TABLE}."OVERRIDE_TIME_ZONE_C" ;;
    }

    dimension: days_since_last_act_trigger_c {
      type: yesno
      sql: ${TABLE}."DAYS_SINCE_LAST_ACT_TRIGGER_C" ;;
    }

    dimension: days_since_last_activity_c {
      type: date
      sql: ${TABLE}."DAYS_SINCE_LAST_ACTIVITY_C" ;;
    }

    dimension_group: first_email_date_time {
      type: time
      sql: ${TABLE}."FIRST_EMAIL_DATE_TIME" ;;
    }

    dimension_group: first_call_date_time {
      type: time
      sql: ${TABLE}."FIRST_CALL_DATE_TIME" ;;
    }

    dimension_group: pendo_tcs_date_c {
      type: time
      sql: ${TABLE}."PENDO_TCS_DATE_C" ;;
    }

    dimension_group: pendo_tcs_date_android_c {
      type: time
      sql: ${TABLE}."PENDO_TCS_DATE_ANDROID_C" ;;
    }

    dimension_group: pendo_tcs_date_force_c {
      type: time
      sql: ${TABLE}."PENDO_TCS_DATE_FORCE_C" ;;
    }

    dimension_group: pendo_tcs_date_i_os_c {
      type: time
      sql: ${TABLE}."PENDO_TCS_DATE_I_OS_C" ;;
    }

    dimension: nurture_status_c {
      type: string
      sql: ${TABLE}."NURTURE_STATUS_C" ;;
    }

    dimension: promo_code_c {
      type: string
      sql: ${TABLE}."PROMO_CODE_C" ;;
    }

    dimension: last_asked_to_be_reference_c {
      type: date
      sql: ${TABLE}."LAST_ASKED_TO_BE_REFERENCE_C" ;;
    }

    dimension: reference_notes_c {
      type: string
      sql: ${TABLE}."REFERENCE_NOTES_C" ;;
    }

    dimension: agreed_to_be_a_reference_c {
      type: yesno
      sql: ${TABLE}."AGREED_TO_BE_A_REFERENCE_C" ;;
    }

    dimension: ring_dna_web_lead_c {
      type: yesno
      sql: ${TABLE}."RING_DNA_WEB_LEAD_C" ;;
    }

    dimension_group: was_web_lead_c {
      type: time
      sql: ${TABLE}."WAS_WEB_LEAD_C" ;;
    }

    dimension: alternate_email_c {
      type: string
      sql: ${TABLE}."ALTERNATE_EMAIL_C" ;;
    }

    dimension: additional_email_recipient_c {
      type: yesno
      sql: ${TABLE}."ADDITIONAL_EMAIL_RECIPIENT_C" ;;
    }

    dimension: pendo_tcs_android_num_c {
      type: number
      sql: ${TABLE}."PENDO_TCS_ANDROID_NUM_C" ;;
    }

    dimension: pendo_tcs_i_os_num_c {
      type: number
      sql: ${TABLE}."PENDO_TCS_I_OS_NUM_C" ;;
    }

    dimension: agree_to_receive_text_c {
      type: string
      sql: ${TABLE}."AGREE_TO_RECEIVE_TEXT_C" ;;
    }

    dimension: lead_source_secondary_detail_c {
      type: string
      sql: ${TABLE}."LEAD_SOURCE_SECONDARY_DETAIL_C" ;;
    }

    dimension: prospect_pain_challenge_c {
      type: string
      sql: ${TABLE}."PROSPECT_PAIN_CHALLENGE_C" ;;
    }

    dimension: initial_plan_interest_c {
      type: string
      sql: ${TABLE}."INITIAL_PLAN_INTEREST_C" ;;
    }

    dimension: prospect_pain_challenge_other_c {
      type: string
      sql: ${TABLE}."PROSPECT_PAIN_CHALLENGE_OTHER_C" ;;
    }

    dimension: prospect_industry_knowledge_c {
      type: string
      sql: ${TABLE}."PROSPECT_INDUSTRY_KNOWLEDGE_C" ;;
    }

    dimension: prospect_industry_knowledge_other_c {
      type: string
      sql: ${TABLE}."PROSPECT_INDUSTRY_KNOWLEDGE_OTHER_C" ;;
    }

    dimension: referring_employee_c {
      type: string
      sql: ${TABLE}."REFERRING_EMPLOYEE_C" ;;
    }

    dimension: referring_contact_c {
      type: string
      sql: ${TABLE}."REFERRING_CONTACT_C" ;;
    }

    dimension: firmographic_score_c {
      type: number
      sql: ${TABLE}."FIRMOGRAPHIC_SCORE_C" ;;
    }

    dimension: behavior_score_c {
      type: number
      sql: ${TABLE}."BEHAVIOR_SCORE_C" ;;
    }

    dimension: master_lead_score_c {
      type: number
      sql: ${TABLE}."MASTER_LEAD_SCORE_C" ;;
    }

    dimension: ps_partner_key_c {
      type: string
      sql: ${TABLE}."PS_PARTNER_KEY_C" ;;
    }

    dimension: ps_customer_key_c {
      type: string
      sql: ${TABLE}."PS_CUSTOMER_KEY_C" ;;
    }

    dimension: testimonial_theme_c {
      type: string
      sql: ${TABLE}."TESTIMONIAL_THEME_C" ;;
    }

    dimension: testimonial_source_c {
      type: string
      sql: ${TABLE}."TESTIMONIAL_SOURCE_C" ;;
    }

    dimension: mql_primary_score_c {
      type: number
      sql: ${TABLE}."MQL_PRIMARY_SCORE_C" ;;
    }

    dimension: co_r_score_old_c {
      type: number
      sql: ${TABLE}."CO_R_SCORE_OLD_C" ;;
    }

    dimension: mql_score_old_c {
      type: number
      sql: ${TABLE}."MQL_SCORE_OLD_C" ;;
    }

    dimension: co_r_primary_score_c {
      type: number
      sql: ${TABLE}."CO_R_PRIMARY_SCORE_C" ;;
    }

    dimension: create_in_prl_c {
      type: yesno
      sql: ${TABLE}."CREATE_IN_PRL_C" ;;
    }

    dimension: ok_to_give_out_email_address_c {
      type: yesno
      sql: ${TABLE}."OK_TO_GIVE_OUT_EMAIL_ADDRESS_C" ;;
    }

    dimension: phone_3_c {
      type: string
      sql: ${TABLE}."PHONE_3_C" ;;
    }

    dimension: ok_to_give_out_phone_c {
      type: yesno
      sql: ${TABLE}."OK_TO_GIVE_OUT_PHONE_C" ;;
    }

    dimension: phone_2_c {
      type: string
      sql: ${TABLE}."PHONE_2_C" ;;
    }

    dimension: rdnacadence_pending_sequence_c {
      type: string
      sql: ${TABLE}."RDNACADENCE_PENDING_SEQUENCE_C" ;;
    }

    dimension: rdnacadence_drip_sequence_pending_c {
      type: yesno
      sql: ${TABLE}."RDNACADENCE_DRIP_SEQUENCE_PENDING_C" ;;
    }

    dimension: ready_to_talk_to_sales_c {
      type: yesno
      sql: ${TABLE}."READY_TO_TALK_TO_SALES_C" ;;
    }

    dimension: nurture_score_c {
      type: number
      sql: ${TABLE}."NURTURE_SCORE_C" ;;
    }

    dimension: asset_ready_to_talk_to_sales_c {
      type: yesno
      sql: ${TABLE}."ASSET_READY_TO_TALK_TO_SALES_C" ;;
    }

    dimension: asset_ready_to_talk_to_sales_co_r_c {
      type: string
      sql: ${TABLE}."ASSET_READY_TO_TALK_TO_SALES_CO_R_C" ;;
    }

    dimension: interest_ready_to_talk_to_sales_co_r_c {
      type: string
      sql: ${TABLE}."INTEREST_READY_TO_TALK_TO_SALES_CO_R_C" ;;
    }

    dimension: contact_external_id_c {
      type: string
      sql: ${TABLE}."CONTACT_EXTERNAL_ID_C" ;;
    }

    dimension: externalid_c {
      type: string
      sql: ${TABLE}."EXTERNALID_C" ;;
    }

    dimension: ringdna_100_languages_c {
      type: string
      sql: ${TABLE}."RINGDNA_100_LANGUAGES_C" ;;
    }

    dimension: ringdna_100_level_c {
      type: string
      sql: ${TABLE}."RINGDNA_100_LEVEL_C" ;;
    }

    dimension: last_bulk_import_c {
      type: date
      sql: ${TABLE}."LAST_BULK_IMPORT_C" ;;
    }

    set: detail {
      fields: [
        id,
        is_deleted,
        master_record_id,
        account_id,
        last_name,
        first_name,
        salutation,
        middle_name,
        name,
        record_type_id,
        mailing_street,
        mailing_city,
        mailing_state,
        mailing_postal_code,
        mailing_country,
        mailing_latitude,
        mailing_longitude,
        mailing_geocode_accuracy,
        phone,
        fax,
        mobile_phone,
        home_phone,
        other_phone,
        reports_to_id,
        email,
        title,
        department,
        owner_id,
        created_date_time,
        created_by_id,
        last_modified_date_time,
        last_modified_by_id,
        system_modstamp_time,
        last_activity_date,
        last_curequest_date_time,
        last_cuupdate_date_time,
        last_viewed_date_time,
        last_referenced_date_time,
        email_bounced_reason,
        email_bounced_date_time,
        is_email_bounced,
        photo_url,
        jigsaw_contact_id,
        alt_phone_c,
        marketo_cookie_c,
        extension_c,
        did_campaign_c,
        alternate_phone_c,
        prl_contact_guid_c,
        prl_contact_id_c,
        alternate_email_1_c,
        alternate_email_2_c,
        gclid_c,
        partner_account_notes_c,
        close_date_c_time,
        olsa_how_heard_c,
        most_recent_campaign_name_c,
        most_recent_resource_name_c,
        active_c,
        how_heard_c,
        responsible_party_c,
        do_not_email_c,
        facebook_profile_c,
        home_phone_c,
        initial_contact_c,
        job_level_c,
        lead_source_detail_c,
        linked_in_profile_c,
        mailer_radio_did_c,
        mobile_phone_c,
        net_prospex_id_c,
        notes_c,
        original_campaign_name_c,
        original_resource_name_c,
        phone_number_c,
        record_source_c,
        sdr_checked_c,
        time_zone_c,
        twitter_profile_c,
        web_form_comments_c,
        also_involved_c,
        main_company_phone_number_c,
        do_not_sync_to_marketo_c,
        do_not_mail_c,
        mkto_71_lead_score_c,
        mkto_71_acquisition_date_c_time,
        mkto_71_acquisition_program_c,
        mkto_si_hide_date_c,
        mkto_si_last_interesting_moment_date_c_time,
        mkto_si_last_interesting_moment_desc_c,
        mkto_si_last_interesting_moment_source_c,
        mkto_si_last_interesting_moment_type_c,
        mkto_si_mkto_lead_score_c,
        mkto_si_priority_c,
        mkto_si_relative_score_value_c,
        mkto_si_urgency_value_c,
        asknicely_nps_last_responded_c_time,
        asknicely_nps_survey_tag_c,
        asknicely_nps_type_c,
        asknicely_nps_comment_c,
        asknicely_npsscore_c,
        chat_brand_c,
        account_executive_c,
        affiliate_2_c,
        affiliate_c,
        campaign_member_c,
        contemplating_service_campaign_member_c,
        email_ext_id_c,
        getting_started_video_campaign_member_c,
        secondary_email_c,
        pc_customer_id_c,
        product_type_c,
        zqu_county_c,
        cs_lifetime_customer_value_c,
        cs_monthly_plan_c,
        cs_roi_c,
        rs_lifetime_customer_value_c,
        rs_monthly_plan_c,
        rs_roi_c,
        ad_group_c,
        conversion_asset_c,
        has_viewed_sales_presentation_c,
        has_viewed_website_pricing_c,
        cloudingo_agent_ces_c,
        cloudingo_agent_mar_c,
        cloudingo_agent_mas_c,
        cloudingo_agent_mav_c,
        cloudingo_agent_mrdi_c,
        cloudingo_agent_mtz_c,
        cloudingo_agent_oar_c,
        cloudingo_agent_oas_c,
        cloudingo_agent_oav_c,
        cloudingo_agent_ordi_c,
        cloudingo_agent_otz_c,
        first_date_c,
        last_campaign_c,
        last_date_c,
        utm_content_c,
        utm_medium_c,
        utm_term_c,
        last_touch_c,
        last_touch_date_c,
        utm_campaign_c,
        utm_campaign_history_c,
        utm_campaign_most_recent_c,
        t_c_accepted_date_c_time,
        gh_cohort_c,
        database_source_c,
        demographic_fields_c,
        marketing_fields_c,
        _fivetran_synced_time,
        individual_id,
        csm_referer_c,
        utm_vertical_c,
        stage_of_research_c,
        activity_metric_id,
        referrer_sfdc_account_id_c,
        referring_email_c,
        referring_name_c,
        lean_data_routing_action_c,
        lean_data_matched_buyer_persona_c,
        lean_data_ld_segment_c,
        lean_data_tag_c,
        lean_data_modified_score_c,
        do_not_email_sales_c,
        olsa_most_recent_c,
        lead_source,
        ringdna_100_last_email_attempt_c_time,
        ringdna_100_email_attempts_c,
        ringdna_100_first_outbound_message_c_time,
        ringdna_100_ring_dna_context_c,
        ringdna_100_last_inbound_call_c_time,
        ringdna_100_first_inbound_call_c_time,
        ringdna_100_message_attempts_c,
        ringdna_100_time_to_first_dial_minutes_c,
        ringdna_100_response_type_c,
        ringdna_100_first_inbound_message_c_time,
        ringdna_100_last_inbound_message_c_time,
        ringdna_100_first_outbound_call_c_time,
        ringdna_100_time_to_first_response_c,
        ringdna_100_last_outbound_call_c_time,
        ringdna_has_opted_out_of_sms_c,
        ringdna_100_last_outbound_message_c_time,
        ringdna_100_call_attempts_c,
        rdnacadence_cadence_performed_c,
        rdnacadence_replied_to_sequence_email_c,
        rdnacadence_cadence_id_c,
        rdnacadence_number_of_performed_sequence_actions_c,
        rdnacadence_is_activated_c,
        rdnacadence_number_of_sequence_emails_sent_c,
        rdnacadence_languages_c,
        rdnacadence_priority_c,
        rdnacadence_number_of_deferred_sequence_actions_c,
        rdnacadence_entrance_criteria_matched_date_c_time,
        rdnacadence_opportunity_id_c,
        rdnacadence_number_of_sequence_emails_to_reply_c,
        rdnacadence_opened_sequence_email_c,
        rdnacadence_number_of_sequence_emails_to_opened_c,
        other_state,
        other_city,
        search_term_c,
        birthdate,
        has_opted_out_of_fax,
        next_activity_date_c,
        description,
        other_phone_2_c,
        other_latitude,
        other_geocode_accuracy,
        assistant_name,
        other_postal_code,
        other_country,
        assistant_phone,
        jigsaw,
        other_street,
        other_longitude,
        do_not_call,
        has_opted_out_of_email,
        customer_testimonial_c,
        testimonial_date_c,
        tcs_last_accepted_c_time,
        dnsmpi_c,
        override_time_zone_c,
        days_since_last_act_trigger_c,
        days_since_last_activity_c,
        first_email_date_time_time,
        first_call_date_time_time,
        pendo_tcs_date_c_time,
        pendo_tcs_date_android_c_time,
        pendo_tcs_date_force_c_time,
        pendo_tcs_date_i_os_c_time,
        nurture_status_c,
        promo_code_c,
        last_asked_to_be_reference_c,
        reference_notes_c,
        agreed_to_be_a_reference_c,
        ring_dna_web_lead_c,
        was_web_lead_c_time,
        alternate_email_c,
        additional_email_recipient_c,
        pendo_tcs_android_num_c,
        pendo_tcs_i_os_num_c,
        agree_to_receive_text_c,
        lead_source_secondary_detail_c,
        prospect_pain_challenge_c,
        initial_plan_interest_c,
        prospect_pain_challenge_other_c,
        prospect_industry_knowledge_c,
        prospect_industry_knowledge_other_c,
        referring_employee_c,
        referring_contact_c,
        firmographic_score_c,
        behavior_score_c,
        master_lead_score_c,
        ps_partner_key_c,
        ps_customer_key_c,
        testimonial_theme_c,
        testimonial_source_c,
        mql_primary_score_c,
        co_r_score_old_c,
        mql_score_old_c,
        co_r_primary_score_c,
        create_in_prl_c,
        ok_to_give_out_email_address_c,
        phone_3_c,
        ok_to_give_out_phone_c,
        phone_2_c,
        rdnacadence_pending_sequence_c,
        rdnacadence_drip_sequence_pending_c,
        ready_to_talk_to_sales_c,
        nurture_score_c,
        asset_ready_to_talk_to_sales_c,
        asset_ready_to_talk_to_sales_co_r_c,
        interest_ready_to_talk_to_sales_co_r_c,
        contact_external_id_c,
        externalid_c,
        ringdna_100_languages_c,
        ringdna_100_level_c,
        last_bulk_import_c
      ]
    }
  }
