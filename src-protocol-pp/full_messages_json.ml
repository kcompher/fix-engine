(** Implementation of the 'full' FIX messages. *)
(***

    Aesthetic Integration Limited
    Copyright (c) 2014 - 2017

    full_messages_json.ml

*)

open Yojson;;
open Base_types_json;;
open Datetime_json;;
open Full_message_tags_json;;
open Full_admin_enums_json;;
open Full_admin_messages_json;;
open Full_app_messages_json;;
open Full_messages;;


let assoc_filter_nulls l : json =
    `Assoc ( List.filter (function ( _, `Null ) -> false | _ -> true ) l )
;;


let full_msg_to_json = function
    | Full_FIX_Admin_Msg x -> full_admin_msg_to_json x
    | Full_FIX_App_Msg   x -> full_app_msg_to_json x
;;


let session_rejected_msg_to_json x : json =  
    [ ( "RefSeqNum"             , int_to_json                        x.srej_msg_msg_seq_num   )
    ; ( "RefTagID"              , full_field_tag_opt_to_json         x.srej_msg_field_tag     )
    ; ( "RefMsgType"            , full_msg_tag_opt_to_json           x.srej_msg_msg_type      )
    ; ( "SessionRejectReason"   , session_reject_reason_opt_to_json  x.srej_msg_reject_reason )
    ; ( "Text"                  , string_opt_to_json                 x.srej_text              )
    ; ( "EncodedTextLen"        , int_opt_to_json                    x.srej_encoded_text_len  )
    ; ( "EncodedText"           , string_opt_to_json                 x.srej_encoded_text      )
    ] |> assoc_filter_nulls 
;;


let biz_rejected_msg_to_json x : json = 
    [ ( "RefSeqNum"	            , int_to_json                     x.brej_msg_ref_seq_num   )
    ; ( "RefMsgTyp"	            , full_msg_tag_to_json            x.brej_msg_msg_tag       )
    ; ( "BusinessRejectReasoni" , business_reject_reason_to_json  x.brej_msg_reject_reason )
    ; ( "Text"	                , string_opt_to_json              x.brej_msg_text          )
    ; ( "EncodedText"	        , string_opt_to_json              x.brej_msg_encoded_text  )
    ] |> assoc_filter_nulls 
;;

 
let header_to_json x : json = 
    [ ( "BeginString" , string_to_json            x.h_begin_string                )
    ; ( "BodyLength"  , int_to_json               x.h_body_length                 )
    ; ( "SenderCompID", string_to_json            x.h_sender_comp_id              )
    ; ( "TargetCompID", string_to_json            x.h_target_comp_id              )
    ; ( "MsgSeqNum"   , int_to_json               x.h_msg_seq_num                 )
    ; ( "OnBehalfOfCompID"      , int_opt_to_json           x.h_on_behalf_of_comp_id        )    
    ; ( "DeliverToCompID"       , int_opt_to_json           x.h_deliver_to_comp_id          )    
    ; ( "SecureDataLen"         , int_opt_to_json           x.h_secure_data_len             )    
    ; ( "SecureData"            , int_opt_to_json           x.h_secure_data                 )    
    ; ( "SenderSubID"           , int_opt_to_json           x.h_sender_sub_id               )    
    ; ( "SenderLocationID"      , int_opt_to_json           x.h_sender_location_id          )    
    ; ( "TargetSubID"           , int_opt_to_json           x.h_target_sub_id               )    
    ; ( "TargetLocationID"      , int_opt_to_json           x.h_target_location_id          )    
    ; ( "OnBehalfOfSubID"       , int_opt_to_json           x.h_on_behalf_of_sub_id         )    
    ; ( "OnBehalfOfLocationID"  , int_opt_to_json           x.h_on_behalf_of_location_id    )    
    ; ( "DeliverToSubID"        , int_opt_to_json           x.h_deliver_to_sub_id           )    
    ; ( "DeliverToLocationID"   , int_opt_to_json           x.h_deliver_to_location_id      )    
    ; ( "PossDupFlag"           , bool_opt_to_json          x.h_poss_dup_flag               )    
    ; ( "PossResend"            , bool_opt_to_json          x.h_poss_resend                 )    
    ; ( "SendingTime"           , utctimestamp_to_json      x.h_sending_time                )    
    ; ( "OrigSendingTime"       , utctimestamp_opt_to_json  x.h_orig_sending_time           )    
    ; ( "XmlDataLen"            , int_opt_to_json           x.h_xml_data_len                )    
    ; ( "XmlData"               , int_opt_to_json           x.h_xml_data                    )    
    ; ( "MessageEncoding"       , int_opt_to_json           x.h_message_enconding           )    
    ; ( "LastMsgSeqNumProcessed", int_opt_to_json           x.h_last_msg_seq_num_processed  )    
    ; ( "NoHops"                , int_opt_to_json           x.h_no_hops                     )    
    ] |> assoc_filter_nulls 
;;


let trailer_to_json x : json =  
    [ ( "SignatureLength" , int_opt_to_json x.signature_length )
    ; ( "Signature"       , int_opt_to_json x.signature        )
    ; ( "CheckSum"        , int_to_json     x.check_sum        )
    ] |> assoc_filter_nulls 
;;


let full_valid_msg_to_json x : json =  
    [ ( "StandardHeader" , header_to_json    x.full_msg_header  ) 
    ; ( "MessageBody",     full_msg_to_json  x.full_msg_data    ) 
    ; ( "StandardTrailer", trailer_to_json   x.full_msg_trailer ) 
    ] |> assoc_filter_nulls 
;;


let full_msg_list_to_json l : json = 
    `List ( l |> List.map  full_valid_msg_to_json )
;;


let full_top_level_msg_to_json x : json = match x with
    | ValidMsg             x -> `Assoc [ ( "ValidMsg"            , full_valid_msg_to_json       x ) ]
    | SessionRejectedMsg   x -> `Assoc [ ( "SessionRejectedMsg"  , session_rejected_msg_to_json x ) ]
    | BusinessRejectedMsg  x -> `Assoc [ ( "BusinessRejectedMsg" , biz_rejected_msg_to_json     x ) ]
    | Garbled                -> `String "Garbled"
;;


let full_top_level_msg_opt_to_json = function
    | None -> `Null
    | Some x -> full_top_level_msg_to_json x
;;
