
(*** 
    
    Aesthetic Integration Limited
    Copyright (c) 2014 - 2017

    full_admin_enums_json.ml

*)

open Yojson;;
open Full_admin_enums;;


let session_reject_reason_to_string = function
    | InvalidTagNumber                               -> "InvalidTagNumber"                         
    | RequiredTagMissing                             -> "RequiredTagMissing"                       
    | TagNotDefined                                  -> "TagNotDefined"                            
    | UndefinedTag                                   -> "UndefinedTag"                             
    | TagSecifiedWithoutAValue                       -> "TagSecifiedWithoutAValue"                 
    | ValueIsIncorrect                               -> "ValueIsIncorrect"                         
    | IncorrectDataFormatForValue                    -> "IncorrectDataFormatForValue"              
    | DecryptionProblem                              -> "DecryptionProblem"                        
    | SignatureProblem                               -> "SignatureProblem"                         
    | CompIDProblem                                  -> "CompIDProblem"                            
    | SendingTimeAccuracyProblem                     -> "SendingTimeAccuracyProblem"               
    | InvalidMsgType                                 -> "InvalidMsgType"                           
    | XMLValidationError                             -> "XMLValidationError"                       
    | TagAppearsMoreThanOnce                         -> "TagAppearsMoreThanOnce"                   
    | TagSpecifiedOutOfRequiredOrder                 -> "TagSpecifiedOutOfRequiredOrder"           
    | RepeatingGroupFieldsOutOfOrder                 -> "RepeatingGroupFieldsOutOfOrder"           
    | IncorrectNumInGroupCountForRepeatingGroup      -> "IncorrectNumInGroupCountForRepeatingGroup"
    | NonDataValueIncludesFieldDelimiter             -> "NonDataValueIncludesFieldDelimiter"       
;;


let business_reject_reason_to_string = function
    | ApplicationDown         -> "ApplicationDown"        
    | MessageTypeNotSupported -> "MessageTypeNotSupported"
    | FieldMissing            -> "FieldMissing"           
;;


let app_reject_reason_to_string = function
    | FIX_App_Reject_MissingReqField -> "MissingReqField"
    | FIX_App_Reject_InvalidField    -> "InvalidField"   
    | FIX_App_Reject_Custom          -> "Custom"         
;;


let gapFillFlag_to_string = function
    | FIX_GapFillFlag_Y  -> "Y"
    | FIX_GapFillFlag_N  -> "N"
;;


let encryption_method_to_string = function
    | PKCS          -> "PKCS"          
    | DES_ECB       -> "DES_ECB"       
    | PKCS_DES      -> "PKCS_DES"      
    | PGP_DES       -> "PGP_DES"       
    | PGP_DES_MD5   -> "PGP_DES_MD5"   
    | PEM_DES_MD5   -> "PEM_DES_MD5"   
    | NoEncryption  -> "NoEncryption"
;;


let session_reject_reason_to_json  x : json = `String ( session_reject_reason_to_string  x ) ;;


let business_reject_reason_to_json x : json = `String ( business_reject_reason_to_string x ) ;; 


let app_reject_reason_to_json      x : json = `String ( app_reject_reason_to_string      x ) ;;


let gapFillFlag_to_json            x : json = `String ( gapFillFlag_to_string            x ) ;;


let encryption_method_to_json      x : json = `String ( encryption_method_to_string      x ) ;;



let session_reject_reason_opt_to_json  = function None -> `Null | Some x -> session_reject_reason_to_json  x ;;


let business_reject_reason_opt_to_json = function None -> `Null | Some x -> business_reject_reason_to_json x ;; 


let app_reject_reason_opt_to_json      = function None -> `Null | Some x -> app_reject_reason_to_json      x ;;


let gapFillFlag_opt_to_json            = function None -> `Null | Some x -> gapFillFlag_to_json            x ;;


let encryption_method_opt_to_json      = function None -> `Null | Some x -> encryption_method_to_json      x ;;
