(** Parse full administrative tags. *)
(***

    Aesthetic Integration Limited
    Copyright (c) 2014 - 2017
    
    parse_admin_tags.ml

*)

open Full_admin_tags;;


let encode_admin_msg_tag = function
    |   Full_Msg_Heartbeat_Tag       -> "0"  
    |   Full_Msg_Test_Request_Tag    -> "1"  
    |   Full_Msg_Resend_Request_Tag  -> "2"  
    |   Full_Msg_Reject_Tag          -> "3"  
    |   Full_Msg_Sequence_Reset_Tag  -> "4"  
    |   Full_Msg_Logoff_Tag          -> "5"  
    |   Full_Msg_Logon_Tag           -> "A"  
    |   Full_Msg_Business_Reject_Tag -> "j"  
;;


let encode_admin_field_tag = function
    | Full_Msg_HeartBtInt_Tag              -> "108" 
    | Full_Msg_TestReqID_Tag               -> "112" 
    | Full_Msg_GapFillFlag_Tag             -> "123" 
    | Full_Msg_ResetSeqNumFlag_Tag         -> "141" 
    | Full_Msg_EndSeqNo_Tag                -> "16"  
    | Full_Msg_EncodedTextLen_Tag          -> "354" 
    | Full_Msg_EncodedText_Tag             -> "355" 
    | Full_Msg_NewSeqNo_Tag                -> "36"  
    | Full_Msg_RefMsgType_Tag              -> "372" 
    | Full_Msg_SessionRejectReason_Tag     -> "373" 
    | Full_Msg_BusinessRejectReason_Tag    -> "380" 
    | Full_Msg_MaxMessageSize_Tag          -> "383" 
    | Full_Msg_RefSeqNum_Tag               -> "45"  
    | Full_Msg_TestMessageIndicator_Tag    -> "464" 
    | Full_Msg_Username_Tag                -> "553" 
    | Full_Msg_Password_Tag                -> "554" 
    | Full_Msg_Text_Tag                    -> "58"  
    | Full_Msg_BeginSeqNo_Tag              -> "7"   
    | Full_Msg_NextExpectedMsgSeqNum_Tag   -> "789" 
    | Full_Msg_RawDataLength_Tag           -> "95"  
    | Full_Msg_RawData_Tag                 -> "96"  
    | Full_Msg_EncryptMethod_Tag           -> "98"  
    | Full_Msg_RefTagID_Tag                -> "371"  
    | Full_Msg_OrigSendingTime_Tag         -> "122"
;;


