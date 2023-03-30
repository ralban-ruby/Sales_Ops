view: cancel_c {
    derived_table: {
      sql: SELECT * FROM FIVETRAN_DB.SALESFORCE.CANCEL_C WHERE IS_DELETED <> 1
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

    dimension: owner_id {
      type: string
      sql: ${TABLE}."OWNER_ID" ;;
    }

    dimension: is_deleted {
      type: yesno
      sql: ${TABLE}."IS_DELETED" ;;
    }

    dimension: name {
      type: string
      sql: ${TABLE}."NAME" ;;
    }

    dimension: record_type_id {
      type: string
      sql: ${TABLE}."RECORD_TYPE_ID" ;;
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

    dimension_group: last_viewed_date {
      type: time
      sql: ${TABLE}."LAST_VIEWED_DATE" ;;
    }

    dimension_group: last_referenced_date {
      type: time
      sql: ${TABLE}."LAST_REFERENCED_DATE" ;;
    }

    dimension: account_c {
      type: string
      sql: ${TABLE}."ACCOUNT_C" ;;
    }

    dimension: cancellation_channel_c {
      type: string
      sql: ${TABLE}."CANCELLATION_CHANNEL_C" ;;
    }

    dimension_group: Cancellation_Effective_Date_c {
      label: "Cancellation Effective Date"
      type: time
      timeframes: [
        raw,
        date,
        week,
        month,
        quarter,
        year,
        time,
        time_of_day,
        hour
      ]
      datatype: datetime
      sql: ${TABLE}."CANCELLATION_EFFECTIVE_DATE_C" ;;
    }

    dimension_group: cancellation_submitted_date_c {
      label: "Cancellation Submitted Date"
      type: time
      timeframes: [
        raw,
        date,
        week,
        month,
        quarter,
        year,
        time,
        time_of_day,
        hour
      ]
      datatype: datetime
      sql: ${TABLE}."CANCELLATION_DATE_C" ;;
    }

    dimension: contact_c {
      type: string
      sql: ${TABLE}."CONTACT_C" ;;
    }

    dimension: credit_applied_c {
      type: string
      sql: ${TABLE}."CREDIT_APPLIED_C" ;;
    }

    dimension: customer_saved_c {
      type: yesno
      sql: ${TABLE}."CUSTOMER_SAVED_C" ;;
    }

    dimension: if_not_rp_has_rp_been_notified_c {
      type: string
      sql: ${TABLE}."IF_NOT_RP_HAS_RP_BEEN_NOTIFIED_C" ;;
    }

    dimension: is_rp_c {
      type: yesno
      sql: ${TABLE}."IS_RP_C" ;;
    }

    dimension: not_a_good_fit_c {
      type: yesno
      sql: ${TABLE}."NOT_A_GOOD_FIT_C" ;;
    }

    dimension: notes_c {
      type: string
      sql: ${TABLE}."NOTES_C" ;;
    }

    dimension: primary_attempted_tactic_c {
      type: string
      sql: ${TABLE}."PRIMARY_ATTEMPTED_TACTIC_C" ;;
    }

    dimension: primary_cancel_reason_c {
      type: string
      sql: ${TABLE}."PRIMARY_CANCEL_REASON_C" ;;
    }

    dimension: primary_reason_detail_c {
      type: string
      sql: ${TABLE}."PRIMARY_REASON_DETAIL_C" ;;
    }

    dimension: second_reason_detail_c {
      type: string
      sql: ${TABLE}."SECOND_REASON_DETAIL_C" ;;
    }

    dimension: secondary_attempted_tactic_c {
      type: string
      sql: ${TABLE}."SECONDARY_ATTEMPTED_TACTIC_C" ;;
    }

    dimension: secondary_cancel_reason_c {
      type: string
      sql: ${TABLE}."SECONDARY_CANCEL_REASON_C" ;;
    }

    dimension: tertiary_cancel_reason_c {
      type: string
      sql: ${TABLE}."TERTIARY_CANCEL_REASON_C" ;;
    }

    dimension: tertiary_reason_detail_c {
      type: string
      sql: ${TABLE}."TERTIARY_REASON_DETAIL_C" ;;
    }

    dimension: was_customer_called_c {
      type: string
      sql: ${TABLE}."WAS_CUSTOMER_CALLED_C" ;;
    }

    dimension: went_to_competitor_c {
      type: yesno
      sql: ${TABLE}."WENT_TO_COMPETITOR_C" ;;
    }

    dimension: what_saved_this_customer_c {
      type: string
      sql: ${TABLE}."WHAT_SAVED_THIS_CUSTOMER_C" ;;
    }

    dimension: who_saved_c {
      type: string
      sql: ${TABLE}."WHO_SAVED_C" ;;
    }

    dimension: x_30_day_notice_c {
      type: string
      sql: ${TABLE}."X_30_DAY_NOTICE_C" ;;
    }

    dimension: uncancel_c {
      type: yesno
      sql: ${TABLE}."UNCANCEL_C" ;;
    }

    dimension: may_return_c {
      type: yesno
      sql: ${TABLE}."MAY_RETURN_C" ;;
    }

    dimension_group: _fivetran_synced {
      type: time
      sql: ${TABLE}."_FIVETRAN_SYNCED" ;;
    }

    dimension: retention_steps_taken_c {
      type: string
      sql: ${TABLE}."RETENTION_STEPS_TAKEN_C" ;;
    }

    dimension: cancellation_date_c {
      type: date
      sql: ${TABLE}."CANCELLATION_DATE_C" ;;
    }

    dimension: anticipated_return_timeframe_c {
      type: string
      sql: ${TABLE}."ANTICIPATED_RETURN_TIMEFRAME_C" ;;
    }

    dimension: which_competitor_c {
      type: string
      sql: ${TABLE}."WHICH_COMPETITOR_C" ;;
    }

    dimension: product_cancelling_c {
      type: string
      sql: ${TABLE}."PRODUCT_CANCELLING_C" ;;
    }

    dimension: mbg_exercised_c {
      type: string
      sql: ${TABLE}."MBG_EXERCISED_C" ;;
    }

    dimension: customer_activation_date_age_c {
      type: number
      sql: ${TABLE}."CUSTOMER_ACTIVATION_DATE_AGE_C" ;;
    }

    dimension: winback_email_notif_sent_c {
      type: yesno
      sql: ${TABLE}."WINBACK_EMAIL_NOTIF_SENT_C" ;;
    }

    dimension: anticipated_return_c {
      type: date
      sql: ${TABLE}."ANTICIPATED_RETURN_C" ;;
    }

    dimension: desired_app_force_functionality_c {
      type: string
      sql: ${TABLE}."DESIRED_APP_FORCE_FUNCTIONALITY_C" ;;
    }

    dimension: primary_reason_other_c {
      type: string
      sql: ${TABLE}."PRIMARY_REASON_OTHER_C" ;;
    }

    dimension: desired_integration_other_c {
      type: string
      sql: ${TABLE}."DESIRED_INTEGRATION_OTHER_C" ;;
    }

    dimension: went_to_competitor_v_2_c {
      type: string
      sql: ${TABLE}."WENT_TO_COMPETITOR_V_2_C" ;;
    }

    dimension: competitor_other_c {
      type: string
      sql: ${TABLE}."COMPETITOR_OTHER_C" ;;
    }

    dimension: may_return_v_2_c {
      type: string
      sql: ${TABLE}."MAY_RETURN_V_2_C" ;;
    }

    dimension: service_issues_c {
      type: string
      sql: ${TABLE}."SERVICE_ISSUES_C" ;;
    }

    dimension: service_issues_other_c {
      type: string
      sql: ${TABLE}."SERVICE_ISSUES_OTHER_C" ;;
    }

    dimension: desired_integrations_c {
      type: string
      sql: ${TABLE}."DESIRED_INTEGRATIONS_C" ;;
    }

    dimension: app_force_functionality_other_c {
      type: string
      sql: ${TABLE}."APP_FORCE_FUNCTIONALITY_OTHER_C" ;;
    }

    dimension: competitor_c {
      type: string
      sql: ${TABLE}."COMPETITOR_C" ;;
    }

    dimension: survey_3_rd_party_vendor_name_c {
      type: string
      sql: ${TABLE}."SURVEY_3_RD_PARTY_VENDOR_NAME_C" ;;
    }

    dimension: survey_switching_to_3_rd_party_vendor_c {
      type: string
      sql: ${TABLE}."SURVEY_SWITCHING_TO_3_RD_PARTY_VENDOR_C" ;;
    }

    dimension: survey_c {
      type: string
      sql: ${TABLE}."SURVEY_C" ;;
    }

    dimension: survey_likelihood_of_returning_c {
      type: string
      sql: ${TABLE}."SURVEY_LIKELIHOOD_OF_RETURNING_C" ;;
    }

    dimension: survey_primary_reason_c {
      type: string
      sql: ${TABLE}."SURVEY_PRIMARY_REASON_C" ;;
    }

    dimension: case_associated_with_cancel_record_c {
      type: string
      sql: ${TABLE}."CASE_ASSOCIATED_WITH_CANCEL_RECORD_C" ;;
    }

    set: detail {
      fields: [
        id,
        owner_id,
        is_deleted,
        name,
        record_type_id,
        created_date_time,
        created_by_id,
        last_modified_date_time,
        last_modified_by_id,
        system_modstamp_time,
        last_activity_date,
        last_viewed_date_time,
        last_referenced_date_time,
        account_c,
        cancellation_channel_c,
        contact_c,
        credit_applied_c,
        customer_saved_c,
        if_not_rp_has_rp_been_notified_c,
        is_rp_c,
        not_a_good_fit_c,
        notes_c,
        primary_attempted_tactic_c,
        primary_cancel_reason_c,
        primary_reason_detail_c,
        second_reason_detail_c,
        secondary_attempted_tactic_c,
        secondary_cancel_reason_c,
        tertiary_cancel_reason_c,
        tertiary_reason_detail_c,
        was_customer_called_c,
        went_to_competitor_c,
        what_saved_this_customer_c,
        who_saved_c,
        x_30_day_notice_c,
        uncancel_c,
        may_return_c,
        _fivetran_synced_time,
        retention_steps_taken_c,
        cancellation_date_c,
        anticipated_return_timeframe_c,
        which_competitor_c,
        product_cancelling_c,
        mbg_exercised_c,
        customer_activation_date_age_c,
        winback_email_notif_sent_c,
        anticipated_return_c,
        desired_app_force_functionality_c,
        primary_reason_other_c,
        desired_integration_other_c,
        went_to_competitor_v_2_c,
        competitor_other_c,
        may_return_v_2_c,
        service_issues_c,
        service_issues_other_c,
        desired_integrations_c,
        app_force_functionality_other_c,
        competitor_c,
        survey_3_rd_party_vendor_name_c,
        survey_switching_to_3_rd_party_vendor_c,
        survey_c,
        survey_likelihood_of_returning_c,
        survey_primary_reason_c,
        case_associated_with_cancel_record_c
      ]
    }
  }
