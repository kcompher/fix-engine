(* Aesthetic Integration copyright 2017 *)
(* @meta[imandra_ignore] on @end *)
open Full_app_enums;;
(* @meta[imandra_ignore] off @end *)

let parse_AccountType ( str ) =
    (match str with
        | "1" -> (Some (FIX_AccountType_CarriedCustomerSide))
        | "2" -> (Some (FIX_AccountType_CarriedNonCustomerSide))
        | "3" -> (Some (FIX_AccountType_HouseTrader))
        | "4" -> (Some (FIX_AccountType_FloorTrader))
        | "6" -> (Some (FIX_AccountType_CarriedNonCustomerSideCrossMargined))
        | "7" -> (Some (FIX_AccountType_HouseTraderCrossMargined))
        | "8" -> (Some (FIX_AccountType_JointBackOfficeAccount))
        | _ -> (None)
    )
;;

let parse_AcctIDSource ( str ) =
    (match str with
        | "1" -> (Some (FIX_AcctIDSource_BIC))
        | "2" -> (Some (FIX_AcctIDSource_SIDCode))
        | "3" -> (Some (FIX_AcctIDSource_TFM))
        | "4" -> (Some (FIX_AcctIDSource_OMGEO))
        | "5" -> (Some (FIX_AcctIDSource_DTCCCode))
        | "99" -> (Some (FIX_AcctIDSource_Other))
        | _ -> (None)
    )
;;

let parse_Adjustment ( str ) =
    (match str with
        | "1" -> (Some (FIX_Adjustment_Cancel))
        | "2" -> (Some (FIX_Adjustment_Error))
        | "3" -> (Some (FIX_Adjustment_Correction))
        | _ -> (None)
    )
;;

let parse_AdjustmentType ( str ) =
    (match str with
        | "0" -> (Some (FIX_AdjustmentType_ProcessRequestAsMarginDisposition))
        | "1" -> (Some (FIX_AdjustmentType_DeltaPlus))
        | "2" -> (Some (FIX_AdjustmentType_DeltaMinus))
        | "3" -> (Some (FIX_AdjustmentType_Final))
        | _ -> (None)
    )
;;

let parse_AdvSide ( str ) =
    (match str with
        | "B" -> (Some (FIX_AdvSide_Buy))
        | "S" -> (Some (FIX_AdvSide_Sell))
        | "X" -> (Some (FIX_AdvSide_Cross))
        | "T" -> (Some (FIX_AdvSide_Trade))
        | _ -> (None)
    )
;;

let parse_AdvTransType ( str ) =
    (match str with
        | "N" -> (Some (FIX_AdvTransType_New))
        | "C" -> (Some (FIX_AdvTransType_Cancel))
        | "R" -> (Some (FIX_AdvTransType_Replace))
        | _ -> (None)
    )
;;

let parse_AffirmStatus ( str ) =
    (match str with
        | "1" -> (Some (FIX_AffirmStatus_Received))
        | "2" -> (Some (FIX_AffirmStatus_ConfirmRejected))
        | "3" -> (Some (FIX_AffirmStatus_Affirmed))
        | _ -> (None)
    )
;;

let parse_AggregatedBook ( str ) =
    (match str with
        | "Y" -> (Some (FIX_AggregatedBook_BookEntriesToBeAggregated))
        | "N" -> (Some (FIX_AggregatedBook_BookEntriesShouldNotBeAggregated))
        | _ -> (None)
    )
;;

let parse_AllocAccountType ( str ) =
    (match str with
        | "1" -> (Some (FIX_AllocAccountType_CarriedCustomerSide))
        | "2" -> (Some (FIX_AllocAccountType_CarriedNonCustomerSide))
        | "3" -> (Some (FIX_AllocAccountType_HouseTrader))
        | "4" -> (Some (FIX_AllocAccountType_FloorTrader))
        | "6" -> (Some (FIX_AllocAccountType_CarriedNonCustomerSideCrossMargined))
        | "7" -> (Some (FIX_AllocAccountType_HouseTraderCrossMargined))
        | "8" -> (Some (FIX_AllocAccountType_JointBackOfficeAccount))
        | _ -> (None)
    )
;;

let parse_AllocCancReplaceReason ( str ) =
    (match str with
        | "1" -> (Some (FIX_AllocCancReplaceReason_OriginalDetailsIncomplete))
        | "2" -> (Some (FIX_AllocCancReplaceReason_ChangeInUnderlyingOrderDetails))
        | "99" -> (Some (FIX_AllocCancReplaceReason_Other))
        | _ -> (None)
    )
;;

let parse_AllocHandlInst ( str ) =
    (match str with
        | "1" -> (Some (FIX_AllocHandlInst_Match))
        | "2" -> (Some (FIX_AllocHandlInst_Forward))
        | "3" -> (Some (FIX_AllocHandlInst_ForwardAndMatch))
        | _ -> (None)
    )
;;

let parse_AllocIntermedReqType ( str ) =
    (match str with
        | "1" -> (Some (FIX_AllocIntermedReqType_PendingAccept))
        | "2" -> (Some (FIX_AllocIntermedReqType_PendingRelease))
        | "3" -> (Some (FIX_AllocIntermedReqType_PendingReversal))
        | "4" -> (Some (FIX_AllocIntermedReqType_Accept))
        | "5" -> (Some (FIX_AllocIntermedReqType_BlockLevelReject))
        | "6" -> (Some (FIX_AllocIntermedReqType_AccountLevelReject))
        | _ -> (None)
    )
;;

let parse_AllocLinkType ( str ) =
    (match str with
        | "0" -> (Some (FIX_AllocLinkType_FXNetting))
        | "1" -> (Some (FIX_AllocLinkType_FXSwap))
        | _ -> (None)
    )
;;

let parse_AllocNoOrdersType ( str ) =
    (match str with
        | "0" -> (Some (FIX_AllocNoOrdersType_NotSpecified))
        | "1" -> (Some (FIX_AllocNoOrdersType_ExplicitListProvided))
        | _ -> (None)
    )
;;

let parse_AllocRejCode ( str ) =
    (match str with
        | "0" -> (Some (FIX_AllocRejCode_UnknownAccount))
        | "1" -> (Some (FIX_AllocRejCode_IncorrectQuantity))
        | "2" -> (Some (FIX_AllocRejCode_IncorrectAveragegPrice))
        | "3" -> (Some (FIX_AllocRejCode_UnknownExecutingBrokerMnemonic))
        | "4" -> (Some (FIX_AllocRejCode_CommissionDifference))
        | "5" -> (Some (FIX_AllocRejCode_UnknownOrderID))
        | "6" -> (Some (FIX_AllocRejCode_UnknownListID))
        | "7" -> (Some (FIX_AllocRejCode_OtherSeeText))
        | "8" -> (Some (FIX_AllocRejCode_IncorrectAllocatedQuantity))
        | "9" -> (Some (FIX_AllocRejCode_CalculationDifference))
        | "10" -> (Some (FIX_AllocRejCode_UnknownOrStaleExecID))
        | "11" -> (Some (FIX_AllocRejCode_MismatchedData))
        | "12" -> (Some (FIX_AllocRejCode_UnknownClOrdID))
        | "13" -> (Some (FIX_AllocRejCode_WarehouseRequestRejected))
        | _ -> (None)
    )
;;

let parse_AllocReportType ( str ) =
    (match str with
        | "3" -> (Some (FIX_AllocReportType_SellsideCalculatedUsingPreliminary))
        | "4" -> (Some (FIX_AllocReportType_SellsideCalculatedWithoutPreliminary))
        | "5" -> (Some (FIX_AllocReportType_WarehouseRecap))
        | "8" -> (Some (FIX_AllocReportType_RequestToIntermediary))
        | _ -> (None)
    )
;;

let parse_AllocSettlInstType ( str ) =
    (match str with
        | "0" -> (Some (FIX_AllocSettlInstType_UseDefaultInstructions))
        | "1" -> (Some (FIX_AllocSettlInstType_DeriveFromParametersProvided))
        | "2" -> (Some (FIX_AllocSettlInstType_FullDetailsProvided))
        | "3" -> (Some (FIX_AllocSettlInstType_SSIDBIDsProvided))
        | "4" -> (Some (FIX_AllocSettlInstType_PhoneForInstructions))
        | _ -> (None)
    )
;;

let parse_AllocStatus ( str ) =
    (match str with
        | "0" -> (Some (FIX_AllocStatus_Accepted))
        | "1" -> (Some (FIX_AllocStatus_BlockLevelReject))
        | "2" -> (Some (FIX_AllocStatus_AccountLevelReject))
        | "3" -> (Some (FIX_AllocStatus_Received))
        | "4" -> (Some (FIX_AllocStatus_Incomplete))
        | "5" -> (Some (FIX_AllocStatus_RejectedByIntermediary))
        | _ -> (None)
    )
;;

let parse_AllocTransType ( str ) =
    (match str with
        | "0" -> (Some (FIX_AllocTransType_New))
        | "1" -> (Some (FIX_AllocTransType_Replace))
        | "2" -> (Some (FIX_AllocTransType_Cancel))
        | _ -> (None)
    )
;;

let parse_AllocType ( str ) =
    (match str with
        | "1" -> (Some (FIX_AllocType_Calculated))
        | "2" -> (Some (FIX_AllocType_Preliminary))
        | "5" -> (Some (FIX_AllocType_ReadyToBook))
        | "7" -> (Some (FIX_AllocType_WarehouseInstruction))
        | "8" -> (Some (FIX_AllocType_RequestToIntermediary))
        | _ -> (None)
    )
;;

let parse_ApplQueueAction ( str ) =
    (match str with
        | "0" -> (Some (FIX_ApplQueueAction_NoActionTaken))
        | "1" -> (Some (FIX_ApplQueueAction_QueueFlushed))
        | "2" -> (Some (FIX_ApplQueueAction_OverlayLast))
        | "3" -> (Some (FIX_ApplQueueAction_EndSession))
        | _ -> (None)
    )
;;

let parse_ApplQueueResolution ( str ) =
    (match str with
        | "0" -> (Some (FIX_ApplQueueResolution_NoActionTaken))
        | "1" -> (Some (FIX_ApplQueueResolution_QueueFlushed))
        | "2" -> (Some (FIX_ApplQueueResolution_OverlayLast))
        | "3" -> (Some (FIX_ApplQueueResolution_EndSession))
        | _ -> (None)
    )
;;

let parse_AssignmentMethod ( str ) =
    (match str with
        | "R" -> (Some (FIX_AssignmentMethod_Random))
        | "P" -> (Some (FIX_AssignmentMethod_ProRata))
        | _ -> (None)
    )
;;

let parse_AvgPxIndicator ( str ) =
    (match str with
        | "0" -> (Some (FIX_AvgPxIndicator_NoAveragePricing))
        | "1" -> (Some (FIX_AvgPxIndicator_Trade))
        | "2" -> (Some (FIX_AvgPxIndicator_LastTrade))
        | _ -> (None)
    )
;;

let parse_BasisPxType ( str ) =
    (match str with
        | "2" -> (Some (FIX_BasisPxType_ClosingPriceAtMorningSession))
        | "3" -> (Some (FIX_BasisPxType_ClosingPrice))
        | "4" -> (Some (FIX_BasisPxType_CurrentPrice))
        | "5" -> (Some (FIX_BasisPxType_SQ))
        | "6" -> (Some (FIX_BasisPxType_VWAPThroughADay))
        | "7" -> (Some (FIX_BasisPxType_VWAPThroughAMorningSession))
        | "8" -> (Some (FIX_BasisPxType_VWAPThroughAnAfternoonSession))
        | "9" -> (Some (FIX_BasisPxType_VWAPThroughADayExcept))
        | "A" -> (Some (FIX_BasisPxType_VWAPThroughAMorningSessionExcept))
        | "B" -> (Some (FIX_BasisPxType_VWAPThroughAnAfternoonSessionExcept))
        | "C" -> (Some (FIX_BasisPxType_Strike))
        | "D" -> (Some (FIX_BasisPxType_Open))
        | "Z" -> (Some (FIX_BasisPxType_Others))
        | _ -> (None)
    )
;;

let parse_BidDescriptorType ( str ) =
    (match str with
        | "1" -> (Some (FIX_BidDescriptorType_Sector))
        | "2" -> (Some (FIX_BidDescriptorType_Country))
        | "3" -> (Some (FIX_BidDescriptorType_Index))
        | _ -> (None)
    )
;;

let parse_BidRequestTransType ( str ) =
    (match str with
        | "N" -> (Some (FIX_BidRequestTransType_New))
        | "C" -> (Some (FIX_BidRequestTransType_Cancel))
        | _ -> (None)
    )
;;

let parse_BidTradeType ( str ) =
    (match str with
        | "R" -> (Some (FIX_BidTradeType_RiskTrade))
        | "G" -> (Some (FIX_BidTradeType_VWAPGuarantee))
        | "A" -> (Some (FIX_BidTradeType_Agency))
        | "J" -> (Some (FIX_BidTradeType_GuaranteedClose))
        | _ -> (None)
    )
;;

let parse_BidType ( str ) =
    (match str with
        | "1" -> (Some (FIX_BidType_NonDisclosed))
        | "2" -> (Some (FIX_BidType_Disclosed))
        | "3" -> (Some (FIX_BidType_NoBiddingProcess))
        | _ -> (None)
    )
;;

let parse_BookingType ( str ) =
    (match str with
        | "0" -> (Some (FIX_BookingType_RegularBooking))
        | "1" -> (Some (FIX_BookingType_CFD))
        | "2" -> (Some (FIX_BookingType_TotalReturnSwap))
        | _ -> (None)
    )
;;

let parse_BookingUnit ( str ) =
    (match str with
        | "0" -> (Some (FIX_BookingUnit_EachPartialExecutionIsABookableUnit))
        | "1" -> (Some (FIX_BookingUnit_AggregatePartialExecutionsOnThisOrder))
        | "2" -> (Some (FIX_BookingUnit_AggregateExecutionsForThisSymbol))
        | _ -> (None)
    )
;;

let parse_CPProgram ( str ) =
    (match str with
        | "1" -> (Some (FIX_CPProgram_Program3a3))
        | "2" -> (Some (FIX_CPProgram_Program42))
        | "99" -> (Some (FIX_CPProgram_Other))
        | _ -> (None)
    )
;;

let parse_CancellationRights ( str ) =
    (match str with
        | "Y" -> (Some (FIX_CancellationRights_Yes))
        | "N" -> (Some (FIX_CancellationRights_NoExecutionOnly))
        | "M" -> (Some (FIX_CancellationRights_NoWaiverAgreement))
        | "O" -> (Some (FIX_CancellationRights_NoInstitutional))
        | _ -> (None)
    )
;;

let parse_CashMargin ( str ) =
    (match str with
        | "1" -> (Some (FIX_CashMargin_Cash))
        | "2" -> (Some (FIX_CashMargin_MarginOpen))
        | "3" -> (Some (FIX_CashMargin_MarginClose))
        | _ -> (None)
    )
;;

let parse_ClearingFeeIndicator ( str ) =
    (match str with
        | "B" -> (Some (FIX_ClearingFeeIndicator_CBOEMember))
        | "C" -> (Some (FIX_ClearingFeeIndicator_NonMemberAndCustomer))
        | "E" -> (Some (FIX_ClearingFeeIndicator_EquityMemberAndClearingMember))
        | "F" -> (Some (FIX_ClearingFeeIndicator_FullAndAssociateMember))
        | "H" -> (Some (FIX_ClearingFeeIndicator_Firms106HAnd106J))
        | "I" -> (Some (FIX_ClearingFeeIndicator_GIM))
        | "L" -> (Some (FIX_ClearingFeeIndicator_Lessee106FEmployees))
        | "M" -> (Some (FIX_ClearingFeeIndicator_AllOtherOwnershipTypes))
        | "1" -> (Some (FIX_ClearingFeeIndicator_FirstYearDelegate))
        | "2" -> (Some (FIX_ClearingFeeIndicator_SecondYearDelegate))
        | "3" -> (Some (FIX_ClearingFeeIndicator_ThirdYearDelegate))
        | "4" -> (Some (FIX_ClearingFeeIndicator_FourthYearDelegate))
        | "5" -> (Some (FIX_ClearingFeeIndicator_FifthYearDelegate))
        | "9" -> (Some (FIX_ClearingFeeIndicator_SixthYearDelegate))
        | _ -> (None)
    )
;;

let parse_ClearingInstruction ( str ) =
    (match str with
        | "0" -> (Some (FIX_ClearingInstruction_ProcessNormally))
        | "1" -> (Some (FIX_ClearingInstruction_ExcludeFromAllNetting))
        | "2" -> (Some (FIX_ClearingInstruction_BilateralNettingOnly))
        | "3" -> (Some (FIX_ClearingInstruction_ExClearing))
        | "4" -> (Some (FIX_ClearingInstruction_SpecialTrade))
        | "5" -> (Some (FIX_ClearingInstruction_MultilateralNetting))
        | "6" -> (Some (FIX_ClearingInstruction_ClearAgainstCentralCounterparty))
        | "7" -> (Some (FIX_ClearingInstruction_ExcludeFromCentralCounterparty))
        | "8" -> (Some (FIX_ClearingInstruction_ManualMode))
        | "9" -> (Some (FIX_ClearingInstruction_AutomaticPostingMode))
        | "10" -> (Some (FIX_ClearingInstruction_AutomaticGiveUpMode))
        | "11" -> (Some (FIX_ClearingInstruction_QualifiedServiceRepresentativeQSR))
        | "12" -> (Some (FIX_ClearingInstruction_CustomerTrade))
        | "13" -> (Some (FIX_ClearingInstruction_SelfClearing))
        | _ -> (None)
    )
;;

let parse_CollAction ( str ) =
    (match str with
        | "0" -> (Some (FIX_CollAction_Retain))
        | "1" -> (Some (FIX_CollAction_Add))
        | "2" -> (Some (FIX_CollAction_Remove))
        | _ -> (None)
    )
;;

let parse_CollAsgnReason ( str ) =
    (match str with
        | "0" -> (Some (FIX_CollAsgnReason_Initial))
        | "1" -> (Some (FIX_CollAsgnReason_Scheduled))
        | "2" -> (Some (FIX_CollAsgnReason_TimeWarning))
        | "3" -> (Some (FIX_CollAsgnReason_MarginDeficiency))
        | "4" -> (Some (FIX_CollAsgnReason_MarginExcess))
        | "5" -> (Some (FIX_CollAsgnReason_ForwardCollateralDemand))
        | "6" -> (Some (FIX_CollAsgnReason_EventOfDefault))
        | "7" -> (Some (FIX_CollAsgnReason_AdverseTaxEvent))
        | _ -> (None)
    )
;;

let parse_CollAsgnRejectReason ( str ) =
    (match str with
        | "0" -> (Some (FIX_CollAsgnRejectReason_UnknownDeal))
        | "1" -> (Some (FIX_CollAsgnRejectReason_UnknownOrInvalidInstrument))
        | "2" -> (Some (FIX_CollAsgnRejectReason_UnauthorizedTransaction))
        | "3" -> (Some (FIX_CollAsgnRejectReason_InsufficientCollateral))
        | "4" -> (Some (FIX_CollAsgnRejectReason_InvalidTypeOfCollateral))
        | "5" -> (Some (FIX_CollAsgnRejectReason_ExcessiveSubstitution))
        | "99" -> (Some (FIX_CollAsgnRejectReason_Other))
        | _ -> (None)
    )
;;

let parse_CollAsgnRespType ( str ) =
    (match str with
        | "0" -> (Some (FIX_CollAsgnRespType_Received))
        | "1" -> (Some (FIX_CollAsgnRespType_Accepted))
        | "2" -> (Some (FIX_CollAsgnRespType_Declined))
        | "3" -> (Some (FIX_CollAsgnRespType_Rejected))
        | _ -> (None)
    )
;;

let parse_CollAsgnTransType ( str ) =
    (match str with
        | "0" -> (Some (FIX_CollAsgnTransType_New))
        | "1" -> (Some (FIX_CollAsgnTransType_Replace))
        | "2" -> (Some (FIX_CollAsgnTransType_Cancel))
        | "3" -> (Some (FIX_CollAsgnTransType_Release))
        | "4" -> (Some (FIX_CollAsgnTransType_Reverse))
        | _ -> (None)
    )
;;

let parse_CollInquiryQualifier ( str ) =
    (match str with
        | "0" -> (Some (FIX_CollInquiryQualifier_TradeDate))
        | "1" -> (Some (FIX_CollInquiryQualifier_GCInstrument))
        | "2" -> (Some (FIX_CollInquiryQualifier_CollateralInstrument))
        | "3" -> (Some (FIX_CollInquiryQualifier_SubstitutionEligible))
        | "4" -> (Some (FIX_CollInquiryQualifier_NotAssigned))
        | "5" -> (Some (FIX_CollInquiryQualifier_PartiallyAssigned))
        | "6" -> (Some (FIX_CollInquiryQualifier_FullyAssigned))
        | "7" -> (Some (FIX_CollInquiryQualifier_OutstandingTrades))
        | _ -> (None)
    )
;;

let parse_CollInquiryResult ( str ) =
    (match str with
        | "0" -> (Some (FIX_CollInquiryResult_Successful))
        | "1" -> (Some (FIX_CollInquiryResult_InvalidOrUnknownInstrument))
        | "2" -> (Some (FIX_CollInquiryResult_InvalidOrUnknownCollateralType))
        | "3" -> (Some (FIX_CollInquiryResult_InvalidParties))
        | "4" -> (Some (FIX_CollInquiryResult_InvalidTransportTypeRequested))
        | "5" -> (Some (FIX_CollInquiryResult_InvalidDestinationRequested))
        | "6" -> (Some (FIX_CollInquiryResult_NoCollateralFoundForTheTradeSpecified))
        | "7" -> (Some (FIX_CollInquiryResult_NoCollateralFoundForTheOrderSpecified))
        | "8" -> (Some (FIX_CollInquiryResult_CollateralInquiryTypeNotSupported))
        | "9" -> (Some (FIX_CollInquiryResult_UnauthorizedForCollateralInquiry))
        | "99" -> (Some (FIX_CollInquiryResult_Other))
        | _ -> (None)
    )
;;

let parse_CollInquiryStatus ( str ) =
    (match str with
        | "0" -> (Some (FIX_CollInquiryStatus_Accepted))
        | "1" -> (Some (FIX_CollInquiryStatus_AcceptedWithWarnings))
        | "2" -> (Some (FIX_CollInquiryStatus_Completed))
        | "3" -> (Some (FIX_CollInquiryStatus_CompletedWithWarnings))
        | "4" -> (Some (FIX_CollInquiryStatus_Rejected))
        | _ -> (None)
    )
;;

let parse_CollStatus ( str ) =
    (match str with
        | "0" -> (Some (FIX_CollStatus_Unassigned))
        | "1" -> (Some (FIX_CollStatus_PartiallyAssigned))
        | "2" -> (Some (FIX_CollStatus_AssignmentProposed))
        | "3" -> (Some (FIX_CollStatus_Assigned))
        | "4" -> (Some (FIX_CollStatus_Challenged))
        | _ -> (None)
    )
;;

let parse_CommType ( str ) =
    (match str with
        | "1" -> (Some (FIX_CommType_PerUnit))
        | "2" -> (Some (FIX_CommType_Percent))
        | "3" -> (Some (FIX_CommType_Absolute))
        | "4" -> (Some (FIX_CommType_PercentageWaivedCashDiscount))
        | "5" -> (Some (FIX_CommType_PercentageWaivedEnhancedUnits))
        | "6" -> (Some (FIX_CommType_PointsPerBondOrContract))
        | _ -> (None)
    )
;;

let parse_ConfirmRejReason ( str ) =
    (match str with
        | "1" -> (Some (FIX_ConfirmRejReason_MismatchedAccount))
        | "2" -> (Some (FIX_ConfirmRejReason_MissingSettlementInstructions))
        | "99" -> (Some (FIX_ConfirmRejReason_Other))
        | _ -> (None)
    )
;;

let parse_ConfirmStatus ( str ) =
    (match str with
        | "1" -> (Some (FIX_ConfirmStatus_Received))
        | "2" -> (Some (FIX_ConfirmStatus_MismatchedAccount))
        | "3" -> (Some (FIX_ConfirmStatus_MissingSettlementInstructions))
        | "4" -> (Some (FIX_ConfirmStatus_Confirmed))
        | "5" -> (Some (FIX_ConfirmStatus_RequestRejected))
        | _ -> (None)
    )
;;

let parse_ConfirmTransType ( str ) =
    (match str with
        | "0" -> (Some (FIX_ConfirmTransType_New))
        | "1" -> (Some (FIX_ConfirmTransType_Replace))
        | "2" -> (Some (FIX_ConfirmTransType_Cancel))
        | _ -> (None)
    )
;;

let parse_ConfirmType ( str ) =
    (match str with
        | "1" -> (Some (FIX_ConfirmType_Status))
        | "2" -> (Some (FIX_ConfirmType_Confirmation))
        | "3" -> (Some (FIX_ConfirmType_ConfirmationRequestRejected))
        | _ -> (None)
    )
;;

let parse_ContAmtType ( str ) =
    (match str with
        | "1" -> (Some (FIX_ContAmtType_CommissionAmount))
        | "2" -> (Some (FIX_ContAmtType_CommissionPercent))
        | "3" -> (Some (FIX_ContAmtType_InitialChargeAmount))
        | "4" -> (Some (FIX_ContAmtType_InitialChargePercent))
        | "5" -> (Some (FIX_ContAmtType_DiscountAmount))
        | "6" -> (Some (FIX_ContAmtType_DiscountPercent))
        | "7" -> (Some (FIX_ContAmtType_DilutionLevyAmount))
        | "8" -> (Some (FIX_ContAmtType_DilutionLevyPercent))
        | "9" -> (Some (FIX_ContAmtType_ExitChargeAmount))
        | "10" -> (Some (FIX_ContAmtType_ExitChargePercent))
        | "11" -> (Some (FIX_ContAmtType_FundBasedRenewalCommissionPercent))
        | "12" -> (Some (FIX_ContAmtType_ProjectedFundValue))
        | "13" -> (Some (FIX_ContAmtType_FundBasedRenewalCommissionOnOrder))
        | "14" -> (Some (FIX_ContAmtType_FundBasedRenewalCommissionOnFund))
        | "15" -> (Some (FIX_ContAmtType_NetSettlementAmount))
        | _ -> (None)
    )
;;

let parse_CorporateAction ( str ) =
    (match str with
        | "A" -> (Some (FIX_CorporateAction_ExDividend))
        | "B" -> (Some (FIX_CorporateAction_ExDistribution))
        | "C" -> (Some (FIX_CorporateAction_ExRights))
        | "D" -> (Some (FIX_CorporateAction_New))
        | "E" -> (Some (FIX_CorporateAction_ExInterest))
        | _ -> (None)
    )
;;

let parse_CoveredOrUncovered ( str ) =
    (match str with
        | "0" -> (Some (FIX_CoveredOrUncovered_Covered))
        | "1" -> (Some (FIX_CoveredOrUncovered_Uncovered))
        | _ -> (None)
    )
;;

let parse_CrossPrioritization ( str ) =
    (match str with
        | "0" -> (Some (FIX_CrossPrioritization_FIXNone))
        | "1" -> (Some (FIX_CrossPrioritization_BuySideIsPrioritized))
        | "2" -> (Some (FIX_CrossPrioritization_SellSideIsPrioritized))
        | _ -> (None)
    )
;;

let parse_CrossType ( str ) =
    (match str with
        | "1" -> (Some (FIX_CrossType_CrossAON))
        | "2" -> (Some (FIX_CrossType_CrossIOC))
        | "3" -> (Some (FIX_CrossType_CrossOneSide))
        | "4" -> (Some (FIX_CrossType_CrossSamePrice))
        | _ -> (None)
    )
;;

let parse_CustOrderCapacity ( str ) =
    (match str with
        | "1" -> (Some (FIX_CustOrderCapacity_MemberTradingForTheirOwnAccount))
        | "2" -> (Some (FIX_CustOrderCapacity_ClearingFirmTradingForItsProprietaryAccount))
        | "3" -> (Some (FIX_CustOrderCapacity_MemberTradingForAnotherMember))
        | "4" -> (Some (FIX_CustOrderCapacity_AllOther))
        | _ -> (None)
    )
;;

let parse_CxlRejReason ( str ) =
    (match str with
        | "0" -> (Some (FIX_CxlRejReason_TooLateToCancel))
        | "1" -> (Some (FIX_CxlRejReason_UnknownOrder))
        | "2" -> (Some (FIX_CxlRejReason_BrokerCredit))
        | "3" -> (Some (FIX_CxlRejReason_OrderAlreadyInPendingStatus))
        | "4" -> (Some (FIX_CxlRejReason_UnableToProcessOrderMassCancelRequest))
        | "5" -> (Some (FIX_CxlRejReason_OrigOrdModTime))
        | "6" -> (Some (FIX_CxlRejReason_DuplicateClOrdID))
        | "99" -> (Some (FIX_CxlRejReason_Other))
        | _ -> (None)
    )
;;

let parse_CxlRejResponseTo ( str ) =
    (match str with
        | "1" -> (Some (FIX_CxlRejResponseTo_OrderCancelRequest))
        | "2" -> (Some (FIX_CxlRejResponseTo_OrderCancel))
        | _ -> (None)
    )
;;

let parse_DKReason ( str ) =
    (match str with
        | "A" -> (Some (FIX_DKReason_UnknownSymbol))
        | "B" -> (Some (FIX_DKReason_WrongSide))
        | "C" -> (Some (FIX_DKReason_QuantityExceedsOrder))
        | "D" -> (Some (FIX_DKReason_NoMatchingOrder))
        | "E" -> (Some (FIX_DKReason_PriceExceedsLimit))
        | "F" -> (Some (FIX_DKReason_CalculationDifference))
        | "Z" -> (Some (FIX_DKReason_Other))
        | _ -> (None)
    )
;;

let parse_DayBookingInst ( str ) =
    (match str with
        | "0" -> (Some (FIX_DayBookingInst_Auto))
        | "1" -> (Some (FIX_DayBookingInst_SpeakWithOrderInitiatorBeforeBooking))
        | "2" -> (Some (FIX_DayBookingInst_Accumulate))
        | _ -> (None)
    )
;;

let parse_DeleteReason ( str ) =
    (match str with
        | "0" -> (Some (FIX_DeleteReason_Cancellation))
        | "1" -> (Some (FIX_DeleteReason_Error))
        | _ -> (None)
    )
;;

let parse_DeliveryForm ( str ) =
    (match str with
        | "1" -> (Some (FIX_DeliveryForm_BookEntry))
        | "2" -> (Some (FIX_DeliveryForm_Bearer))
        | _ -> (None)
    )
;;

let parse_DeliveryType ( str ) =
    (match str with
        | "0" -> (Some (FIX_DeliveryType_VersusPayment))
        | "1" -> (Some (FIX_DeliveryType_Free))
        | "2" -> (Some (FIX_DeliveryType_TriParty))
        | "3" -> (Some (FIX_DeliveryType_HoldInCustody))
        | _ -> (None)
    )
;;

let parse_DiscretionInst ( str ) =
    (match str with
        | "0" -> (Some (FIX_DiscretionInst_RelatedToDisplayedPrice))
        | "1" -> (Some (FIX_DiscretionInst_RelatedToMarketPrice))
        | "2" -> (Some (FIX_DiscretionInst_RelatedToPrimaryPrice))
        | "3" -> (Some (FIX_DiscretionInst_RelatedToLocalPrimaryPrice))
        | "4" -> (Some (FIX_DiscretionInst_RelatedToMidpointPrice))
        | "5" -> (Some (FIX_DiscretionInst_RelatedToLastTradePrice))
        | "6" -> (Some (FIX_DiscretionInst_RelatedToVWAP))
        | _ -> (None)
    )
;;

let parse_DiscretionLimitType ( str ) =
    (match str with
        | "0" -> (Some (FIX_DiscretionLimitType_OrBetter))
        | "1" -> (Some (FIX_DiscretionLimitType_Strict))
        | "2" -> (Some (FIX_DiscretionLimitType_OrWorse))
        | _ -> (None)
    )
;;

let parse_DiscretionMoveType ( str ) =
    (match str with
        | "0" -> (Some (FIX_DiscretionMoveType_Floating))
        | "1" -> (Some (FIX_DiscretionMoveType_Fixed))
        | _ -> (None)
    )
;;

let parse_DiscretionOffsetType ( str ) =
    (match str with
        | "0" -> (Some (FIX_DiscretionOffsetType_Price))
        | "1" -> (Some (FIX_DiscretionOffsetType_BasisPoints))
        | "2" -> (Some (FIX_DiscretionOffsetType_Ticks))
        | "3" -> (Some (FIX_DiscretionOffsetType_PriceTier))
        | _ -> (None)
    )
;;

let parse_DiscretionRoundDirection ( str ) =
    (match str with
        | "1" -> (Some (FIX_DiscretionRoundDirection_MoreAggressive))
        | "2" -> (Some (FIX_DiscretionRoundDirection_MorePassive))
        | _ -> (None)
    )
;;

let parse_DiscretionScope ( str ) =
    (match str with
        | "1" -> (Some (FIX_DiscretionScope_Local))
        | "2" -> (Some (FIX_DiscretionScope_National))
        | "3" -> (Some (FIX_DiscretionScope_Global))
        | "4" -> (Some (FIX_DiscretionScope_NationalExcludingLocal))
        | _ -> (None)
    )
;;

let parse_DistribPaymentMethod ( str ) =
    (match str with
        | "1" -> (Some (FIX_DistribPaymentMethod_CREST))
        | "2" -> (Some (FIX_DistribPaymentMethod_NSCC))
        | "3" -> (Some (FIX_DistribPaymentMethod_Euroclear))
        | "4" -> (Some (FIX_DistribPaymentMethod_Clearstream))
        | "5" -> (Some (FIX_DistribPaymentMethod_Cheque))
        | "6" -> (Some (FIX_DistribPaymentMethod_TelegraphicTransfer))
        | "7" -> (Some (FIX_DistribPaymentMethod_FedWire))
        | "8" -> (Some (FIX_DistribPaymentMethod_DirectCredit))
        | "9" -> (Some (FIX_DistribPaymentMethod_ACHCredit))
        | "10" -> (Some (FIX_DistribPaymentMethod_BPAY))
        | "11" -> (Some (FIX_DistribPaymentMethod_HighValueClearingSystemHVACS))
        | "12" -> (Some (FIX_DistribPaymentMethod_ReinvestInFund))
        | _ -> (None)
    )
;;

let parse_DlvyInstType ( str ) =
    (match str with
        | "S" -> (Some (FIX_DlvyInstType_Securities))
        | "C" -> (Some (FIX_DlvyInstType_Cash))
        | _ -> (None)
    )
;;

let parse_DueToRelated ( str ) =
    (match str with
        | "Y" -> (Some (FIX_DueToRelated_RelatedToSecurityHalt))
        | "N" -> (Some (FIX_DueToRelated_NotRelatedToSecurityHalt))
        | _ -> (None)
    )
;;

let parse_EmailType ( str ) =
    (match str with
        | "0" -> (Some (FIX_EmailType_New))
        | "1" -> (Some (FIX_EmailType_Reply))
        | "2" -> (Some (FIX_EmailType_AdminReply))
        | _ -> (None)
    )
;;

let parse_EventType ( str ) =
    (match str with
        | "1" -> (Some (FIX_EventType_Put))
        | "2" -> (Some (FIX_EventType_Call))
        | "3" -> (Some (FIX_EventType_Tender))
        | "4" -> (Some (FIX_EventType_SinkingFundCall))
        | "99" -> (Some (FIX_EventType_Other))
        | _ -> (None)
    )
;;

let parse_ExchangeForPhysical ( str ) =
    (match str with
        | "Y" -> (Some (FIX_ExchangeForPhysical_True))
        | "N" -> (Some (FIX_ExchangeForPhysical_False))
        | _ -> (None)
    )
;;

let parse_ExecInst ( str ) =
    (match str with
        | "1" -> (Some (FIX_ExecInst_NotHeld))
        | "2" -> (Some (FIX_ExecInst_Work))
        | "3" -> (Some (FIX_ExecInst_GoAlong))
        | "4" -> (Some (FIX_ExecInst_OverTheDay))
        | "5" -> (Some (FIX_ExecInst_Held))
        | "6" -> (Some (FIX_ExecInst_ParticipateDoNotInitiate))
        | "7" -> (Some (FIX_ExecInst_StrictScale))
        | "8" -> (Some (FIX_ExecInst_TryToScale))
        | "9" -> (Some (FIX_ExecInst_StayOnBidSide))
        | "0" -> (Some (FIX_ExecInst_StayOnOfferSide))
        | "A" -> (Some (FIX_ExecInst_NoCross))
        | "B" -> (Some (FIX_ExecInst_OKToCross))
        | "C" -> (Some (FIX_ExecInst_CallFirst))
        | "D" -> (Some (FIX_ExecInst_PercentOfVolume))
        | "E" -> (Some (FIX_ExecInst_DoNotIncrease))
        | "F" -> (Some (FIX_ExecInst_DoNotReduce))
        | "G" -> (Some (FIX_ExecInst_AllOrNone))
        | "H" -> (Some (FIX_ExecInst_ReinstateOnSystemFailure))
        | "I" -> (Some (FIX_ExecInst_InstitutionsOnly))
        | "J" -> (Some (FIX_ExecInst_ReinstateOnTradingHalt))
        | "K" -> (Some (FIX_ExecInst_CancelOnTradingHalt))
        | "L" -> (Some (FIX_ExecInst_LastPeg))
        | "M" -> (Some (FIX_ExecInst_MidPricePeg))
        | "N" -> (Some (FIX_ExecInst_NonNegotiable))
        | "O" -> (Some (FIX_ExecInst_OpeningPeg))
        | "P" -> (Some (FIX_ExecInst_MarketPeg))
        | "Q" -> (Some (FIX_ExecInst_CancelOnSystemFailure))
        | "R" -> (Some (FIX_ExecInst_PrimaryPeg))
        | "S" -> (Some (FIX_ExecInst_Suspend))
        | "U" -> (Some (FIX_ExecInst_CustomerDisplayInstruction))
        | "V" -> (Some (FIX_ExecInst_Netting))
        | "W" -> (Some (FIX_ExecInst_PegToVWAP))
        | "X" -> (Some (FIX_ExecInst_TradeAlong))
        | "Y" -> (Some (FIX_ExecInst_TryToStop))
        | "Z" -> (Some (FIX_ExecInst_CancelIfNotBest))
        | "a" -> (Some (FIX_ExecInst_TrailingStopPeg))
        | "b" -> (Some (FIX_ExecInst_StrictLimit))
        | "c" -> (Some (FIX_ExecInst_IgnorePriceValidityChecks))
        | "d" -> (Some (FIX_ExecInst_PegToLimitPrice))
        | "e" -> (Some (FIX_ExecInst_WorkToTargetStrategy))
        | _ -> (None)
    )
;;

let parse_ExecPriceType ( str ) =
    (match str with
        | "B" -> (Some (FIX_ExecPriceType_BidPrice))
        | "C" -> (Some (FIX_ExecPriceType_CreationPrice))
        | "D" -> (Some (FIX_ExecPriceType_CreationPricePlusAdjustmentPercent))
        | "E" -> (Some (FIX_ExecPriceType_CreationPricePlusAdjustmentAmount))
        | "O" -> (Some (FIX_ExecPriceType_OfferPrice))
        | "P" -> (Some (FIX_ExecPriceType_OfferPriceMinusAdjustmentPercent))
        | "Q" -> (Some (FIX_ExecPriceType_OfferPriceMinusAdjustmentAmount))
        | "S" -> (Some (FIX_ExecPriceType_SinglePrice))
        | _ -> (None)
    )
;;

let parse_ExecRestatementReason ( str ) =
    (match str with
        | "0" -> (Some (FIX_ExecRestatementReason_GTCorporateAction))
        | "1" -> (Some (FIX_ExecRestatementReason_GTRenewal))
        | "2" -> (Some (FIX_ExecRestatementReason_VerbalChange))
        | "3" -> (Some (FIX_ExecRestatementReason_RepricingOfOrder))
        | "4" -> (Some (FIX_ExecRestatementReason_BrokerOption))
        | "5" -> (Some (FIX_ExecRestatementReason_PartialDeclineOfOrderQty))
        | "6" -> (Some (FIX_ExecRestatementReason_CancelOnTradingHalt))
        | "7" -> (Some (FIX_ExecRestatementReason_CancelOnSystemFailure))
        | "8" -> (Some (FIX_ExecRestatementReason_Market))
        | "9" -> (Some (FIX_ExecRestatementReason_Canceled))
        | "10" -> (Some (FIX_ExecRestatementReason_WarehouseRecap))
        | "99" -> (Some (FIX_ExecRestatementReason_Other))
        | _ -> (None)
    )
;;

let parse_ExecType ( str ) =
    (match str with
        | "0" -> (Some (FIX_ExecType_New))
        | "3" -> (Some (FIX_ExecType_DoneForDay))
        | "4" -> (Some (FIX_ExecType_Canceled))
        | "5" -> (Some (FIX_ExecType_Replaced))
        | "6" -> (Some (FIX_ExecType_PendingCancel))
        | "7" -> (Some (FIX_ExecType_Stopped))
        | "8" -> (Some (FIX_ExecType_Rejected))
        | "9" -> (Some (FIX_ExecType_Suspended))
        | "A" -> (Some (FIX_ExecType_PendingNew))
        | "B" -> (Some (FIX_ExecType_Calculated))
        | "C" -> (Some (FIX_ExecType_Expired))
        | "D" -> (Some (FIX_ExecType_Restated))
        | "E" -> (Some (FIX_ExecType_PendingReplace))
        | "F" -> (Some (FIX_ExecType_Trade))
        | "G" -> (Some (FIX_ExecType_TradeCorrect))
        | "H" -> (Some (FIX_ExecType_TradeCancel))
        | "I" -> (Some (FIX_ExecType_OrderStatus))
        | _ -> (None)
    )
;;

let parse_ExerciseMethod ( str ) =
    (match str with
        | "A" -> (Some (FIX_ExerciseMethod_Automatic))
        | "M" -> (Some (FIX_ExerciseMethod_Manual))
        | _ -> (None)
    )
;;

let parse_ExpirationCycle ( str ) =
    (match str with
        | "0" -> (Some (FIX_ExpirationCycle_ExpireOnTradingSessionClose))
        | "1" -> (Some (FIX_ExpirationCycle_ExpireOnTradingSessionOpen))
        | _ -> (None)
    )
;;

let parse_FinancialStatus ( str ) =
    (match str with
        | "1" -> (Some (FIX_FinancialStatus_Bankrupt))
        | "2" -> (Some (FIX_FinancialStatus_PendingDelisting))
        | _ -> (None)
    )
;;

let parse_ForexReq ( str ) =
    (match str with
        | "Y" -> (Some (FIX_ForexReq_ExecuteForexAfterSecurityTrade))
        | "N" -> (Some (FIX_ForexReq_DoNotExecuteForexAfterSecurityTrade))
        | _ -> (None)
    )
;;

let parse_FundRenewWaiv ( str ) =
    (match str with
        | "Y" -> (Some (FIX_FundRenewWaiv_Yes))
        | "N" -> (Some (FIX_FundRenewWaiv_No))
        | _ -> (None)
    )
;;

let parse_GTBookingInst ( str ) =
    (match str with
        | "0" -> (Some (FIX_GTBookingInst_BookOutAllTradesOnDayOfExecution))
        | "1" -> (Some (FIX_GTBookingInst_AccumulateUntilFilledOrExpired))
        | "2" -> (Some (FIX_GTBookingInst_AccumulateUntilVerballlyNotifiedOtherwise))
        | _ -> (None)
    )
;;

let parse_HaltReason ( str ) =
    (match str with
        | "I" -> (Some (FIX_HaltReason_OrderImbalance))
        | "X" -> (Some (FIX_HaltReason_EquipmentChangeover))
        | "P" -> (Some (FIX_HaltReason_NewsPending))
        | "D" -> (Some (FIX_HaltReason_NewsDissemination))
        | "E" -> (Some (FIX_HaltReason_OrderInflux))
        | "M" -> (Some (FIX_HaltReason_AdditionalInformation))
        | _ -> (None)
    )
;;

let parse_HandlInst ( str ) =
    (match str with
        | "1" -> (Some (FIX_HandlInst_AutomatedExecutionNoIntervention))
        | "2" -> (Some (FIX_HandlInst_AutomatedExecutionInterventionOK))
        | "3" -> (Some (FIX_HandlInst_ManualOrder))
        | _ -> (None)
    )
;;

let parse_IOINaturalFlag ( str ) =
    (match str with
        | "Y" -> (Some (FIX_IOINaturalFlag_Natural))
        | "N" -> (Some (FIX_IOINaturalFlag_NotNatural))
        | _ -> (None)
    )
;;

let parse_IOIQltyInd ( str ) =
    (match str with
        | "L" -> (Some (FIX_IOIQltyInd_Low))
        | "M" -> (Some (FIX_IOIQltyInd_Medium))
        | "H" -> (Some (FIX_IOIQltyInd_High))
        | _ -> (None)
    )
;;

let parse_IOIQty ( str ) =
    (match str with
        | "S" -> (Some (FIX_IOIQty_Small))
        | "M" -> (Some (FIX_IOIQty_Medium))
        | "L" -> (Some (FIX_IOIQty_Large))
        | _ -> (None)
    )
;;

let parse_IOIQualifier ( str ) =
    (match str with
        | "A" -> (Some (FIX_IOIQualifier_AllOrNone))
        | "B" -> (Some (FIX_IOIQualifier_MarketOnClose))
        | "C" -> (Some (FIX_IOIQualifier_AtTheClose))
        | "D" -> (Some (FIX_IOIQualifier_VWAP))
        | "I" -> (Some (FIX_IOIQualifier_InTouchWith))
        | "L" -> (Some (FIX_IOIQualifier_Limit))
        | "M" -> (Some (FIX_IOIQualifier_MoreBehind))
        | "O" -> (Some (FIX_IOIQualifier_AtTheOpen))
        | "P" -> (Some (FIX_IOIQualifier_TakingAPosition))
        | "Q" -> (Some (FIX_IOIQualifier_AtTheMarket))
        | "R" -> (Some (FIX_IOIQualifier_ReadyToTrade))
        | "S" -> (Some (FIX_IOIQualifier_PortfolioShown))
        | "T" -> (Some (FIX_IOIQualifier_ThroughTheDay))
        | "V" -> (Some (FIX_IOIQualifier_Versus))
        | "W" -> (Some (FIX_IOIQualifier_Indication))
        | "X" -> (Some (FIX_IOIQualifier_CrossingOpportunity))
        | "Y" -> (Some (FIX_IOIQualifier_AtTheMidpoint))
        | "Z" -> (Some (FIX_IOIQualifier_PreOpen))
        | _ -> (None)
    )
;;

let parse_IOITransType ( str ) =
    (match str with
        | "N" -> (Some (FIX_IOITransType_New))
        | "C" -> (Some (FIX_IOITransType_Cancel))
        | "R" -> (Some (FIX_IOITransType_Replace))
        | _ -> (None)
    )
;;

let parse_InViewOfCommon ( str ) =
    (match str with
        | "Y" -> (Some (FIX_InViewOfCommon_HaltWasDueToCommonStockBeingHalted))
        | "N" -> (Some (FIX_InViewOfCommon_HaltWasNotRelatedToAHaltOfTheCommonStock))
        | _ -> (None)
    )
;;

let parse_IncTaxInd ( str ) =
    (match str with
        | "1" -> (Some (FIX_IncTaxInd_Net))
        | "2" -> (Some (FIX_IncTaxInd_Gross))
        | _ -> (None)
    )
;;

let parse_InstrAttribType ( str ) =
    (match str with
        | "1" -> (Some (FIX_InstrAttribType_Flat))
        | "2" -> (Some (FIX_InstrAttribType_ZeroCoupon))
        | "3" -> (Some (FIX_InstrAttribType_InterestBearing))
        | "4" -> (Some (FIX_InstrAttribType_NoPeriodicPayments))
        | "5" -> (Some (FIX_InstrAttribType_VariableRate))
        | "6" -> (Some (FIX_InstrAttribType_LessFeeForPut))
        | "7" -> (Some (FIX_InstrAttribType_SteppedCoupon))
        | "8" -> (Some (FIX_InstrAttribType_CouponPeriod))
        | "9" -> (Some (FIX_InstrAttribType_When))
        | "10" -> (Some (FIX_InstrAttribType_OriginalIssueDiscount))
        | "11" -> (Some (FIX_InstrAttribType_Callable))
        | "12" -> (Some (FIX_InstrAttribType_EscrowedToMaturity))
        | "13" -> (Some (FIX_InstrAttribType_EscrowedToRedemptionDate))
        | "14" -> (Some (FIX_InstrAttribType_PreRefunded))
        | "15" -> (Some (FIX_InstrAttribType_InDefault))
        | "16" -> (Some (FIX_InstrAttribType_Unrated))
        | "17" -> (Some (FIX_InstrAttribType_Taxable))
        | "18" -> (Some (FIX_InstrAttribType_Indexed))
        | "19" -> (Some (FIX_InstrAttribType_SubjectToAlternativeMinimumTax))
        | "20" -> (Some (FIX_InstrAttribType_OriginalIssueDiscountPrice))
        | "21" -> (Some (FIX_InstrAttribType_CallableBelowMaturityValue))
        | "22" -> (Some (FIX_InstrAttribType_CallableWithoutNotice))
        | "99" -> (Some (FIX_InstrAttribType_Text))
        | _ -> (None)
    )
;;

let parse_LastCapacity ( str ) =
    (match str with
        | "1" -> (Some (FIX_LastCapacity_Agent))
        | "2" -> (Some (FIX_LastCapacity_CrossAsAgent))
        | "3" -> (Some (FIX_LastCapacity_CrossAsPrincipal))
        | "4" -> (Some (FIX_LastCapacity_Principal))
        | _ -> (None)
    )
;;

let parse_LastFragment ( str ) =
    (match str with
        | "Y" -> (Some (FIX_LastFragment_LastMessage))
        | "N" -> (Some (FIX_LastFragment_NotLastMessage))
        | _ -> (None)
    )
;;

let parse_LastLiquidityInd ( str ) =
    (match str with
        | "1" -> (Some (FIX_LastLiquidityInd_AddedLiquidity))
        | "2" -> (Some (FIX_LastLiquidityInd_RemovedLiquidity))
        | "3" -> (Some (FIX_LastLiquidityInd_LiquidityRoutedOut))
        | _ -> (None)
    )
;;

let parse_LegSwapType ( str ) =
    (match str with
        | "1" -> (Some (FIX_LegSwapType_ParForPar))
        | "2" -> (Some (FIX_LegSwapType_ModifiedDuration))
        | "4" -> (Some (FIX_LegSwapType_Risk))
        | "5" -> (Some (FIX_LegSwapType_Proceeds))
        | _ -> (None)
    )
;;

let parse_LegalConfirm ( str ) =
    (match str with
        | "Y" -> (Some (FIX_LegalConfirm_LegalConfirm))
        | "N" -> (Some (FIX_LegalConfirm_DoesNotConsituteALegalConfirm))
        | _ -> (None)
    )
;;

let parse_LiquidityIndType ( str ) =
    (match str with
        | "1" -> (Some (FIX_LiquidityIndType_FiveDayMovingAverage))
        | "2" -> (Some (FIX_LiquidityIndType_TwentyDayMovingAverage))
        | "3" -> (Some (FIX_LiquidityIndType_NormalMarketSize))
        | "4" -> (Some (FIX_LiquidityIndType_Other))
        | _ -> (None)
    )
;;

let parse_ListExecInstType ( str ) =
    (match str with
        | "1" -> (Some (FIX_ListExecInstType_Immediate))
        | "2" -> (Some (FIX_ListExecInstType_WaitForInstruction))
        | "3" -> (Some (FIX_ListExecInstType_SellDriven))
        | "4" -> (Some (FIX_ListExecInstType_BuyDrivenCashTopUp))
        | "5" -> (Some (FIX_ListExecInstType_BuyDrivenCashWithdraw))
        | _ -> (None)
    )
;;

let parse_ListOrderStatus ( str ) =
    (match str with
        | "1" -> (Some (FIX_ListOrderStatus_InBiddingProcess))
        | "2" -> (Some (FIX_ListOrderStatus_ReceivedForExecution))
        | "3" -> (Some (FIX_ListOrderStatus_Executing))
        | "4" -> (Some (FIX_ListOrderStatus_Cancelling))
        | "5" -> (Some (FIX_ListOrderStatus_Alert))
        | "6" -> (Some (FIX_ListOrderStatus_AllDone))
        | "7" -> (Some (FIX_ListOrderStatus_Reject))
        | _ -> (None)
    )
;;

let parse_ListStatusType ( str ) =
    (match str with
        | "1" -> (Some (FIX_ListStatusType_Ack))
        | "2" -> (Some (FIX_ListStatusType_Response))
        | "3" -> (Some (FIX_ListStatusType_Timed))
        | "4" -> (Some (FIX_ListStatusType_ExecStarted))
        | "5" -> (Some (FIX_ListStatusType_AllDone))
        | "6" -> (Some (FIX_ListStatusType_Alert))
        | _ -> (None)
    )
;;

let parse_LocateReqd ( str ) =
    (match str with
        | "Y" -> (Some (FIX_LocateReqd_Yes))
        | "N" -> (Some (FIX_LocateReqd_No))
        | _ -> (None)
    )
;;

let parse_MDEntryType ( str ) =
    (match str with
        | "0" -> (Some (FIX_MDEntryType_Bid))
        | "1" -> (Some (FIX_MDEntryType_Offer))
        | "2" -> (Some (FIX_MDEntryType_Trade))
        | "3" -> (Some (FIX_MDEntryType_IndexValue))
        | "4" -> (Some (FIX_MDEntryType_OpeningPrice))
        | "5" -> (Some (FIX_MDEntryType_ClosingPrice))
        | "6" -> (Some (FIX_MDEntryType_SettlementPrice))
        | "7" -> (Some (FIX_MDEntryType_TradingSessionHighPrice))
        | "8" -> (Some (FIX_MDEntryType_TradingSessionLowPrice))
        | "9" -> (Some (FIX_MDEntryType_TradingSessionVWAPPrice))
        | "A" -> (Some (FIX_MDEntryType_Imbalance))
        | "B" -> (Some (FIX_MDEntryType_TradeVolume))
        | "C" -> (Some (FIX_MDEntryType_OpenInterest))
        | _ -> (None)
    )
;;

let parse_MDImplicitDelete ( str ) =
    (match str with
        | "Y" -> (Some (FIX_MDImplicitDelete_Yes))
        | "N" -> (Some (FIX_MDImplicitDelete_No))
        | _ -> (None)
    )
;;

let parse_MDReqRejReason ( str ) =
    (match str with
        | "0" -> (Some (FIX_MDReqRejReason_UnknownSymbol))
        | "1" -> (Some (FIX_MDReqRejReason_DuplicateMDReqID))
        | "2" -> (Some (FIX_MDReqRejReason_InsufficientBandwidth))
        | "3" -> (Some (FIX_MDReqRejReason_InsufficientPermissions))
        | "4" -> (Some (FIX_MDReqRejReason_UnsupportedSubscriptionRequestType))
        | "5" -> (Some (FIX_MDReqRejReason_UnsupportedMarketDepth))
        | "6" -> (Some (FIX_MDReqRejReason_UnsupportedMDUpdateType))
        | "7" -> (Some (FIX_MDReqRejReason_UnsupportedAggregatedBook))
        | "8" -> (Some (FIX_MDReqRejReason_UnsupportedMDEntryType))
        | "9" -> (Some (FIX_MDReqRejReason_UnsupportedTradingSessionID))
        | "A" -> (Some (FIX_MDReqRejReason_UnsupportedScope))
        | "B" -> (Some (FIX_MDReqRejReason_UnsupportedOpenCloseSettleFlag))
        | "C" -> (Some (FIX_MDReqRejReason_UnsupportedMDImplicitDelete))
        | _ -> (None)
    )
;;

let parse_MDUpdateAction ( str ) =
    (match str with
        | "0" -> (Some (FIX_MDUpdateAction_New))
        | "1" -> (Some (FIX_MDUpdateAction_Change))
        | "2" -> (Some (FIX_MDUpdateAction_Delete))
        | _ -> (None)
    )
;;

let parse_MDUpdateType ( str ) =
    (match str with
        | "0" -> (Some (FIX_MDUpdateType_FullRefresh))
        | "1" -> (Some (FIX_MDUpdateType_IncrementalRefresh))
        | _ -> (None)
    )
;;

let parse_MassCancelRejectReason ( str ) =
    (match str with
        | "0" -> (Some (FIX_MassCancelRejectReason_MassCancelNotSupported))
        | "1" -> (Some (FIX_MassCancelRejectReason_InvalidOrUnknownSecurity))
        | "2" -> (Some (FIX_MassCancelRejectReason_InvalidOrUnkownUnderlyingSecurity))
        | "3" -> (Some (FIX_MassCancelRejectReason_InvalidOrUnknownProduct))
        | "4" -> (Some (FIX_MassCancelRejectReason_InvalidOrUnknownCFICode))
        | "5" -> (Some (FIX_MassCancelRejectReason_InvalidOrUnknownSecurityType))
        | "6" -> (Some (FIX_MassCancelRejectReason_InvalidOrUnknownTradingSession))
        | "99" -> (Some (FIX_MassCancelRejectReason_Other))
        | _ -> (None)
    )
;;

let parse_MassCancelRequestType ( str ) =
    (match str with
        | "1" -> (Some (FIX_MassCancelRequestType_CancelOrdersForASecurity))
        | "2" -> (Some (FIX_MassCancelRequestType_CancelOrdersForAnUnderlyingSecurity))
        | "3" -> (Some (FIX_MassCancelRequestType_CancelOrdersForAProduct))
        | "4" -> (Some (FIX_MassCancelRequestType_CancelOrdersForACFICode))
        | "5" -> (Some (FIX_MassCancelRequestType_CancelOrdersForASecurityType))
        | "6" -> (Some (FIX_MassCancelRequestType_CancelOrdersForATradingSession))
        | "7" -> (Some (FIX_MassCancelRequestType_CancelAllOrders))
        | _ -> (None)
    )
;;

let parse_MassCancelResponse ( str ) =
    (match str with
        | "0" -> (Some (FIX_MassCancelResponse_CancelRequestRejected))
        | "1" -> (Some (FIX_MassCancelResponse_CancelOrdersForASecurity))
        | "2" -> (Some (FIX_MassCancelResponse_CancelOrdersForAnUnderlyingSecurity))
        | "3" -> (Some (FIX_MassCancelResponse_CancelOrdersForAProduct))
        | "4" -> (Some (FIX_MassCancelResponse_CancelOrdersForACFICode))
        | "5" -> (Some (FIX_MassCancelResponse_CancelOrdersForASecurityType))
        | "6" -> (Some (FIX_MassCancelResponse_CancelOrdersForATradingSession))
        | "7" -> (Some (FIX_MassCancelResponse_CancelAllOrders))
        | _ -> (None)
    )
;;

let parse_MassStatusReqType ( str ) =
    (match str with
        | "1" -> (Some (FIX_MassStatusReqType_StatusForOrdersForASecurity))
        | "2" -> (Some (FIX_MassStatusReqType_StatusForOrdersForAnUnderlyingSecurity))
        | "3" -> (Some (FIX_MassStatusReqType_StatusForOrdersForAProduct))
        | "4" -> (Some (FIX_MassStatusReqType_StatusForOrdersForACFICode))
        | "5" -> (Some (FIX_MassStatusReqType_StatusForOrdersForASecurityType))
        | "6" -> (Some (FIX_MassStatusReqType_StatusForOrdersForATradingSession))
        | "7" -> (Some (FIX_MassStatusReqType_StatusForAllOrders))
        | "8" -> (Some (FIX_MassStatusReqType_StatusForOrdersForAPartyID))
        | _ -> (None)
    )
;;

let parse_MatchStatus ( str ) =
    (match str with
        | "0" -> (Some (FIX_MatchStatus_Compared))
        | "1" -> (Some (FIX_MatchStatus_Uncompared))
        | "2" -> (Some (FIX_MatchStatus_AdvisoryOrAlert))
        | _ -> (None)
    )
;;

let parse_MatchType ( str ) =
    (match str with
        | "A1" -> (Some (FIX_MatchType_ExactMatchPlus4BadgesExecTime))
        | "A2" -> (Some (FIX_MatchType_ExactMatchPlus4Badges))
        | "A3" -> (Some (FIX_MatchType_ExactMatchPlus2BadgesExecTime))
        | "A4" -> (Some (FIX_MatchType_ExactMatchPlus2Badges))
        | "A5" -> (Some (FIX_MatchType_ExactMatchPlusExecTime))
        | "AQ" -> (Some (FIX_MatchType_StampedAdvisoriesOrSpecialistAccepts))
        | "S1" -> (Some (FIX_MatchType_A1ExactMatchSummarizedQuantity))
        | "S2" -> (Some (FIX_MatchType_A2ExactMatchSummarizedQuantity))
        | "S3" -> (Some (FIX_MatchType_A3ExactMatchSummarizedQuantity))
        | "S4" -> (Some (FIX_MatchType_A4ExactMatchSummarizedQuantity))
        | "S5" -> (Some (FIX_MatchType_A5ExactMatchSummarizedQuantity))
        | "M1" -> (Some (FIX_MatchType_ExactMatchMinusBadgesTimes))
        | "M2" -> (Some (FIX_MatchType_SummarizedMatchMinusBadgesTimes))
        | "MT" -> (Some (FIX_MatchType_OCSLockedIn))
        | "M3" -> (Some (FIX_MatchType_ACTAcceptedTrade))
        | "M4" -> (Some (FIX_MatchType_ACTDefaultTrade))
        | "M5" -> (Some (FIX_MatchType_ACTDefaultAfterM2))
        | "M6" -> (Some (FIX_MatchType_ACTM6Match))
        | _ -> (None)
    )
;;

let parse_MessageEncoding ( str ) =
    (match str with
        | "ISO-2022-JP" -> (Some (FIX_MessageEncoding_ISO2022JP))
        | "EUC-JP" -> (Some (FIX_MessageEncoding_EUCJP))
        | "Shift_JIS" -> (Some (FIX_MessageEncoding_ShiftJIS))
        | "UTF-8" -> (Some (FIX_MessageEncoding_UTF8))
        | _ -> (None)
    )
;;

let parse_MiscFeeBasis ( str ) =
    (match str with
        | "0" -> (Some (FIX_MiscFeeBasis_Absolute))
        | "1" -> (Some (FIX_MiscFeeBasis_PerUnit))
        | "2" -> (Some (FIX_MiscFeeBasis_Percentage))
        | _ -> (None)
    )
;;

let parse_MiscFeeType ( str ) =
    (match str with
        | "1" -> (Some (FIX_MiscFeeType_Regulatory))
        | "2" -> (Some (FIX_MiscFeeType_Tax))
        | "3" -> (Some (FIX_MiscFeeType_LocalCommission))
        | "4" -> (Some (FIX_MiscFeeType_ExchangeFees))
        | "5" -> (Some (FIX_MiscFeeType_Stamp))
        | "6" -> (Some (FIX_MiscFeeType_Levy))
        | "7" -> (Some (FIX_MiscFeeType_Other))
        | "8" -> (Some (FIX_MiscFeeType_Markup))
        | "9" -> (Some (FIX_MiscFeeType_ConsumptionTax))
        | "10" -> (Some (FIX_MiscFeeType_PerTransaction))
        | "11" -> (Some (FIX_MiscFeeType_Conversion))
        | "12" -> (Some (FIX_MiscFeeType_Agent))
        | _ -> (None)
    )
;;

let parse_MoneyLaunderingStatus ( str ) =
    (match str with
        | "Y" -> (Some (FIX_MoneyLaunderingStatus_Passed))
        | "N" -> (Some (FIX_MoneyLaunderingStatus_NotChecked))
        | "1" -> (Some (FIX_MoneyLaunderingStatus_ExemptBelowLimit))
        | "2" -> (Some (FIX_MoneyLaunderingStatus_ExemptMoneyType))
        | "3" -> (Some (FIX_MoneyLaunderingStatus_ExemptAuthorised))
        | _ -> (None)
    )
;;

let parse_MsgDirection ( str ) =
    (match str with
        | "S" -> (Some (FIX_MsgDirection_Send))
        | "R" -> (Some (FIX_MsgDirection_Receive))
        | _ -> (None)
    )
;;

let parse_MultiLegReportingType ( str ) =
    (match str with
        | "1" -> (Some (FIX_MultiLegReportingType_SingleSecurity))
        | "2" -> (Some (FIX_MultiLegReportingType_IndividualLegOfAMultiLegSecurity))
        | "3" -> (Some (FIX_MultiLegReportingType_MultiLegSecurity))
        | _ -> (None)
    )
;;

let parse_MultiLegRptTypeReq ( str ) =
    (match str with
        | "0" -> (Some (FIX_MultiLegRptTypeReq_ReportByMulitlegSecurityOnly))
        | "1" -> (Some (FIX_MultiLegRptTypeReq_ReportByMultilegSecurityAndInstrumentLegs))
        | "2" -> (Some (FIX_MultiLegRptTypeReq_ReportByInstrumentLegsOnly))
        | _ -> (None)
    )
;;

let parse_NetGrossInd ( str ) =
    (match str with
        | "1" -> (Some (FIX_NetGrossInd_Net))
        | "2" -> (Some (FIX_NetGrossInd_Gross))
        | _ -> (None)
    )
;;

let parse_NetworkRequestType ( str ) =
    (match str with
        | "1" -> (Some (FIX_NetworkRequestType_Snapshot))
        | "2" -> (Some (FIX_NetworkRequestType_Subscribe))
        | "4" -> (Some (FIX_NetworkRequestType_StopSubscribing))
        | "8" -> (Some (FIX_NetworkRequestType_LevelOfDetail))
        | _ -> (None)
    )
;;

let parse_NetworkStatusResponseType ( str ) =
    (match str with
        | "1" -> (Some (FIX_NetworkStatusResponseType_Full))
        | "2" -> (Some (FIX_NetworkStatusResponseType_IncrementalUpdate))
        | _ -> (None)
    )
;;

let parse_NoSides ( str ) =
    (match str with
        | "1" -> (Some (FIX_NoSides_OneSide))
        | "2" -> (Some (FIX_NoSides_BothSides))
        | _ -> (None)
    )
;;

let parse_NotifyBrokerOfCredit ( str ) =
    (match str with
        | "Y" -> (Some (FIX_NotifyBrokerOfCredit_DetailsShouldBeCommunicated))
        | "N" -> (Some (FIX_NotifyBrokerOfCredit_DetailsShouldNotBeCommunicated))
        | _ -> (None)
    )
;;

let parse_OddLot ( str ) =
    (match str with
        | "Y" -> (Some (FIX_OddLot_TreatAsOddLot))
        | "N" -> (Some (FIX_OddLot_TreatAsRoundLot))
        | _ -> (None)
    )
;;

let parse_OpenCloseSettlFlag ( str ) =
    (match str with
        | "0" -> (Some (FIX_OpenCloseSettlFlag_DailyOpen))
        | "1" -> (Some (FIX_OpenCloseSettlFlag_SessionOpen))
        | "2" -> (Some (FIX_OpenCloseSettlFlag_DeliverySettlementEntry))
        | "3" -> (Some (FIX_OpenCloseSettlFlag_ExpectedEntry))
        | "4" -> (Some (FIX_OpenCloseSettlFlag_EntryFromPreviousBusinessDay))
        | "5" -> (Some (FIX_OpenCloseSettlFlag_TheoreticalPriceValue))
        | _ -> (None)
    )
;;

let parse_OrdRejReason ( str ) =
    (match str with
        | "0" -> (Some (FIX_OrdRejReason_BrokerCredit))
        | "1" -> (Some (FIX_OrdRejReason_UnknownSymbol))
        | "2" -> (Some (FIX_OrdRejReason_ExchangeClosed))
        | "3" -> (Some (FIX_OrdRejReason_OrderExceedsLimit))
        | "4" -> (Some (FIX_OrdRejReason_TooLateToEnter))
        | "5" -> (Some (FIX_OrdRejReason_UnknownOrder))
        | "6" -> (Some (FIX_OrdRejReason_DuplicateOrder))
        | "7" -> (Some (FIX_OrdRejReason_DuplicateOfAVerballyCommunicatedOrder))
        | "8" -> (Some (FIX_OrdRejReason_StaleOrder))
        | "9" -> (Some (FIX_OrdRejReason_TradeAlongRequired))
        | "10" -> (Some (FIX_OrdRejReason_InvalidInvestorID))
        | "11" -> (Some (FIX_OrdRejReason_UnsupportedOrderCharacteristic))
        | "13" -> (Some (FIX_OrdRejReason_IncorrectQuantity))
        | "14" -> (Some (FIX_OrdRejReason_IncorrectAllocatedQuantity))
        | "15" -> (Some (FIX_OrdRejReason_UnknownAccount))
        | "99" -> (Some (FIX_OrdRejReason_Other))
        | _ -> (None)
    )
;;

let parse_OrdStatus ( str ) =
    (match str with
        | "0" -> (Some (FIX_OrdStatus_New))
        | "1" -> (Some (FIX_OrdStatus_PartiallyFilled))
        | "2" -> (Some (FIX_OrdStatus_Filled))
        | "3" -> (Some (FIX_OrdStatus_DoneForDay))
        | "4" -> (Some (FIX_OrdStatus_Canceled))
        | "6" -> (Some (FIX_OrdStatus_PendingCancel))
        | "7" -> (Some (FIX_OrdStatus_Stopped))
        | "8" -> (Some (FIX_OrdStatus_Rejected))
        | "9" -> (Some (FIX_OrdStatus_Suspended))
        | "A" -> (Some (FIX_OrdStatus_PendingNew))
        | "B" -> (Some (FIX_OrdStatus_Calculated))
        | "C" -> (Some (FIX_OrdStatus_Expired))
        | "D" -> (Some (FIX_OrdStatus_AcceptedForBidding))
        | "E" -> (Some (FIX_OrdStatus_PendingReplace))
        | "5" -> (Some (FIX_OrdStatus_Replaced))
        | _ -> (None)
    )
;;

let parse_OrdType ( str ) =
    (match str with
        | "1" -> (Some (FIX_OrdType_Market))
        | "2" -> (Some (FIX_OrdType_Limit))
        | "3" -> (Some (FIX_OrdType_Stop))
        | "4" -> (Some (FIX_OrdType_StopLimit))
        | "6" -> (Some (FIX_OrdType_WithOrWithout))
        | "7" -> (Some (FIX_OrdType_LimitOrBetter))
        | "8" -> (Some (FIX_OrdType_LimitWithOrWithout))
        | "9" -> (Some (FIX_OrdType_OnBasis))
        | "D" -> (Some (FIX_OrdType_PreviouslyQuoted))
        | "E" -> (Some (FIX_OrdType_PreviouslyIndicated))
        | "G" -> (Some (FIX_OrdType_ForexSwap))
        | "I" -> (Some (FIX_OrdType_Funari))
        | "J" -> (Some (FIX_OrdType_MarketIfTouched))
        | "K" -> (Some (FIX_OrdType_MarketWithLeftOverAsLimit))
        | "L" -> (Some (FIX_OrdType_PreviousFundValuationPoint))
        | "M" -> (Some (FIX_OrdType_NextFundValuationPoint))
        | "P" -> (Some (FIX_OrdType_Pegged))
        | _ -> (None)
    )
;;

let parse_OrderCapacity ( str ) =
    (match str with
        | "A" -> (Some (FIX_OrderCapacity_Agency))
        | "G" -> (Some (FIX_OrderCapacity_Proprietary))
        | "I" -> (Some (FIX_OrderCapacity_Individual))
        | "P" -> (Some (FIX_OrderCapacity_Principal))
        | "R" -> (Some (FIX_OrderCapacity_RisklessPrincipal))
        | "W" -> (Some (FIX_OrderCapacity_AgentForOtherMember))
        | _ -> (None)
    )
;;

let parse_OrderRestrictions ( str ) =
    (match str with
        | "1" -> (Some (FIX_OrderRestrictions_ProgramTrade))
        | "2" -> (Some (FIX_OrderRestrictions_IndexArbitrage))
        | "3" -> (Some (FIX_OrderRestrictions_NonIndexArbitrage))
        | "4" -> (Some (FIX_OrderRestrictions_CompetingMarketMaker))
        | "5" -> (Some (FIX_OrderRestrictions_ActingAsMarketMakerOrSpecialistInSecurity))
        | "6" -> (Some (FIX_OrderRestrictions_ActingAsMarketMakerOrSpecialistInUnderlying))
        | "7" -> (Some (FIX_OrderRestrictions_ForeignEntity))
        | "8" -> (Some (FIX_OrderRestrictions_ExternalMarketParticipant))
        | "9" -> (Some (FIX_OrderRestrictions_ExternalInterConnectedMarketLinkage))
        | "A" -> (Some (FIX_OrderRestrictions_RisklessArbitrage))
        | _ -> (None)
    )
;;

let parse_OwnerType ( str ) =
    (match str with
        | "1" -> (Some (FIX_OwnerType_IndividualInvestor))
        | "2" -> (Some (FIX_OwnerType_PublicCompany))
        | "3" -> (Some (FIX_OwnerType_PrivateCompany))
        | "4" -> (Some (FIX_OwnerType_IndividualTrustee))
        | "5" -> (Some (FIX_OwnerType_CompanyTrustee))
        | "6" -> (Some (FIX_OwnerType_PensionPlan))
        | "7" -> (Some (FIX_OwnerType_CustodianUnderGiftsToMinorsAct))
        | "8" -> (Some (FIX_OwnerType_Trusts))
        | "9" -> (Some (FIX_OwnerType_Fiduciaries))
        | "10" -> (Some (FIX_OwnerType_NetworkingSubAccount))
        | "11" -> (Some (FIX_OwnerType_NonProfitOrganization))
        | "12" -> (Some (FIX_OwnerType_CorporateBody))
        | "13" -> (Some (FIX_OwnerType_Nominee))
        | _ -> (None)
    )
;;

let parse_OwnershipType ( str ) =
    (match str with
        | "J" -> (Some (FIX_OwnershipType_JointInvestors))
        | "T" -> (Some (FIX_OwnershipType_TenantsInCommon))
        | "2" -> (Some (FIX_OwnershipType_JointTrustees))
        | _ -> (None)
    )
;;

let parse_PartyIDSource ( str ) =
    (match str with
        | "B" -> (Some (FIX_PartyIDSource_BIC))
        | "C" -> (Some (FIX_PartyIDSource_GeneralIdentifier))
        | "D" -> (Some (FIX_PartyIDSource_Proprietary))
        | "E" -> (Some (FIX_PartyIDSource_ISOCountryCode))
        | "F" -> (Some (FIX_PartyIDSource_SettlementEntityLocation))
        | "G" -> (Some (FIX_PartyIDSource_MIC))
        | "H" -> (Some (FIX_PartyIDSource_CSDParticipant))
        | "1" -> (Some (FIX_PartyIDSource_KoreanInvestorID))
        | "2" -> (Some (FIX_PartyIDSource_TaiwaneseForeignInvestorID))
        | "3" -> (Some (FIX_PartyIDSource_TaiwaneseTradingAcct))
        | "4" -> (Some (FIX_PartyIDSource_MalaysianCentralDepository))
        | "5" -> (Some (FIX_PartyIDSource_ChineseInvestorID))
        | "6" -> (Some (FIX_PartyIDSource_UKNationalInsuranceOrPensionNumber))
        | "7" -> (Some (FIX_PartyIDSource_USSocialSecurityNumber))
        | "8" -> (Some (FIX_PartyIDSource_USEmployerOrTaxIDNumber))
        | "9" -> (Some (FIX_PartyIDSource_AustralianBusinessNumber))
        | "A" -> (Some (FIX_PartyIDSource_AustralianTaxFileNumber))
        | "I" -> (Some (FIX_PartyIDSource_ISITCAcronym))
        | _ -> (None)
    )
;;

let parse_PartyRole ( str ) =
    (match str with
        | "1" -> (Some (FIX_PartyRole_ExecutingFirm))
        | "2" -> (Some (FIX_PartyRole_BrokerOfCredit))
        | "3" -> (Some (FIX_PartyRole_ClientID))
        | "4" -> (Some (FIX_PartyRole_ClearingFirm))
        | "5" -> (Some (FIX_PartyRole_InvestorID))
        | "6" -> (Some (FIX_PartyRole_IntroducingFirm))
        | "7" -> (Some (FIX_PartyRole_EnteringFirm))
        | "8" -> (Some (FIX_PartyRole_Locate))
        | "9" -> (Some (FIX_PartyRole_FundManagerClientID))
        | "10" -> (Some (FIX_PartyRole_SettlementLocation))
        | "11" -> (Some (FIX_PartyRole_OrderOriginationTrader))
        | "12" -> (Some (FIX_PartyRole_ExecutingTrader))
        | "13" -> (Some (FIX_PartyRole_OrderOriginationFirm))
        | "14" -> (Some (FIX_PartyRole_GiveupClearingFirm))
        | "15" -> (Some (FIX_PartyRole_CorrespondantClearingFirm))
        | "16" -> (Some (FIX_PartyRole_ExecutingSystem))
        | "17" -> (Some (FIX_PartyRole_ContraFirm))
        | "18" -> (Some (FIX_PartyRole_ContraClearingFirm))
        | "19" -> (Some (FIX_PartyRole_SponsoringFirm))
        | "20" -> (Some (FIX_PartyRole_UnderlyingContraFirm))
        | "21" -> (Some (FIX_PartyRole_ClearingOrganization))
        | "22" -> (Some (FIX_PartyRole_Exchange))
        | "24" -> (Some (FIX_PartyRole_CustomerAccount))
        | "25" -> (Some (FIX_PartyRole_CorrespondentClearingOrganization))
        | "26" -> (Some (FIX_PartyRole_CorrespondentBroker))
        | "27" -> (Some (FIX_PartyRole_Buyer))
        | "28" -> (Some (FIX_PartyRole_Custodian))
        | "29" -> (Some (FIX_PartyRole_Intermediary))
        | "30" -> (Some (FIX_PartyRole_Agent))
        | "31" -> (Some (FIX_PartyRole_SubCustodian))
        | "32" -> (Some (FIX_PartyRole_Beneficiary))
        | "33" -> (Some (FIX_PartyRole_InterestedParty))
        | "34" -> (Some (FIX_PartyRole_RegulatoryBody))
        | "35" -> (Some (FIX_PartyRole_LiquidityProvider))
        | "36" -> (Some (FIX_PartyRole_EnteringTrader))
        | "37" -> (Some (FIX_PartyRole_ContraTrader))
        | "38" -> (Some (FIX_PartyRole_PositionAccount))
        | _ -> (None)
    )
;;

let parse_PartySubIDType ( str ) =
    (match str with
        | "1" -> (Some (FIX_PartySubIDType_Firm))
        | "2" -> (Some (FIX_PartySubIDType_Person))
        | "3" -> (Some (FIX_PartySubIDType_System))
        | "4" -> (Some (FIX_PartySubIDType_Application))
        | "5" -> (Some (FIX_PartySubIDType_FullLegalNameOfFirm))
        | "6" -> (Some (FIX_PartySubIDType_PostalAddress))
        | "7" -> (Some (FIX_PartySubIDType_PhoneNumber))
        | "8" -> (Some (FIX_PartySubIDType_EmailAddress))
        | "9" -> (Some (FIX_PartySubIDType_ContactName))
        | "10" -> (Some (FIX_PartySubIDType_SecuritiesAccountNumber))
        | "11" -> (Some (FIX_PartySubIDType_RegistrationNumber))
        | "12" -> (Some (FIX_PartySubIDType_RegisteredAddressForConfirmation))
        | "13" -> (Some (FIX_PartySubIDType_RegulatoryStatus))
        | "14" -> (Some (FIX_PartySubIDType_RegistrationName))
        | "15" -> (Some (FIX_PartySubIDType_CashAccountNumber))
        | "16" -> (Some (FIX_PartySubIDType_BIC))
        | "17" -> (Some (FIX_PartySubIDType_CSDParticipantMemberCode))
        | "18" -> (Some (FIX_PartySubIDType_RegisteredAddress))
        | "19" -> (Some (FIX_PartySubIDType_FundAccountName))
        | "20" -> (Some (FIX_PartySubIDType_TelexNumber))
        | "21" -> (Some (FIX_PartySubIDType_FaxNumber))
        | "22" -> (Some (FIX_PartySubIDType_SecuritiesAccountName))
        | "23" -> (Some (FIX_PartySubIDType_CashAccountName))
        | "24" -> (Some (FIX_PartySubIDType_Department))
        | "25" -> (Some (FIX_PartySubIDType_LocationDesk))
        | "26" -> (Some (FIX_PartySubIDType_PositionAccountType))
        | _ -> (None)
    )
;;

let parse_PaymentMethod ( str ) =
    (match str with
        | "1" -> (Some (FIX_PaymentMethod_CREST))
        | "2" -> (Some (FIX_PaymentMethod_NSCC))
        | "3" -> (Some (FIX_PaymentMethod_Euroclear))
        | "4" -> (Some (FIX_PaymentMethod_Clearstream))
        | "5" -> (Some (FIX_PaymentMethod_Cheque))
        | "6" -> (Some (FIX_PaymentMethod_TelegraphicTransfer))
        | "7" -> (Some (FIX_PaymentMethod_FedWire))
        | "8" -> (Some (FIX_PaymentMethod_DebitCard))
        | "9" -> (Some (FIX_PaymentMethod_DirectDebit))
        | "10" -> (Some (FIX_PaymentMethod_DirectCredit))
        | "11" -> (Some (FIX_PaymentMethod_CreditCard))
        | "12" -> (Some (FIX_PaymentMethod_ACHDebit))
        | "13" -> (Some (FIX_PaymentMethod_ACHCredit))
        | "14" -> (Some (FIX_PaymentMethod_BPAY))
        | "15" -> (Some (FIX_PaymentMethod_HighValueClearingSystem))
        | _ -> (None)
    )
;;

let parse_PegLimitType ( str ) =
    (match str with
        | "0" -> (Some (FIX_PegLimitType_OrBetter))
        | "1" -> (Some (FIX_PegLimitType_Strict))
        | "2" -> (Some (FIX_PegLimitType_OrWorse))
        | _ -> (None)
    )
;;

let parse_PegMoveType ( str ) =
    (match str with
        | "0" -> (Some (FIX_PegMoveType_Floating))
        | "1" -> (Some (FIX_PegMoveType_Fixed))
        | _ -> (None)
    )
;;

let parse_PegOffsetType ( str ) =
    (match str with
        | "0" -> (Some (FIX_PegOffsetType_Price))
        | "1" -> (Some (FIX_PegOffsetType_BasisPoints))
        | "2" -> (Some (FIX_PegOffsetType_Ticks))
        | "3" -> (Some (FIX_PegOffsetType_PriceTier))
        | _ -> (None)
    )
;;

let parse_PegRoundDirection ( str ) =
    (match str with
        | "1" -> (Some (FIX_PegRoundDirection_MoreAggressive))
        | "2" -> (Some (FIX_PegRoundDirection_MorePassive))
        | _ -> (None)
    )
;;

let parse_PegScope ( str ) =
    (match str with
        | "1" -> (Some (FIX_PegScope_Local))
        | "2" -> (Some (FIX_PegScope_National))
        | "3" -> (Some (FIX_PegScope_Global))
        | "4" -> (Some (FIX_PegScope_NationalExcludingLocal))
        | _ -> (None)
    )
;;

let parse_PosAmtType ( str ) =
    (match str with
        | "FMTM" -> (Some (FIX_PosAmtType_FinalMarkToMarketAmount))
        | "IMTM" -> (Some (FIX_PosAmtType_IncrementalMarkToMarketAmount))
        | "TVAR" -> (Some (FIX_PosAmtType_TradeVariationAmount))
        | "SMTM" -> (Some (FIX_PosAmtType_StartOfDayMarkToMarketAmount))
        | "PREM" -> (Some (FIX_PosAmtType_PremiumAmount))
        | "CRES" -> (Some (FIX_PosAmtType_CashResidualAmount))
        | "CASH" -> (Some (FIX_PosAmtType_CashAmount))
        | "VADJ" -> (Some (FIX_PosAmtType_ValueAdjustedAmount))
        | _ -> (None)
    )
;;

let parse_PosMaintAction ( str ) =
    (match str with
        | "1" -> (Some (FIX_PosMaintAction_New))
        | "2" -> (Some (FIX_PosMaintAction_Replace))
        | "3" -> (Some (FIX_PosMaintAction_Cancel))
        | _ -> (None)
    )
;;

let parse_PosMaintResult ( str ) =
    (match str with
        | "0" -> (Some (FIX_PosMaintResult_SuccessfulCompletion))
        | "1" -> (Some (FIX_PosMaintResult_Rejected))
        | "99" -> (Some (FIX_PosMaintResult_Other))
        | _ -> (None)
    )
;;

let parse_PosMaintStatus ( str ) =
    (match str with
        | "0" -> (Some (FIX_PosMaintStatus_Accepted))
        | "1" -> (Some (FIX_PosMaintStatus_AcceptedWithWarnings))
        | "2" -> (Some (FIX_PosMaintStatus_Rejected))
        | "3" -> (Some (FIX_PosMaintStatus_Completed))
        | "4" -> (Some (FIX_PosMaintStatus_CompletedWithWarnings))
        | _ -> (None)
    )
;;

let parse_PosQtyStatus ( str ) =
    (match str with
        | "0" -> (Some (FIX_PosQtyStatus_Submitted))
        | "1" -> (Some (FIX_PosQtyStatus_Accepted))
        | "2" -> (Some (FIX_PosQtyStatus_Rejected))
        | _ -> (None)
    )
;;

let parse_PosReqResult ( str ) =
    (match str with
        | "0" -> (Some (FIX_PosReqResult_ValidRequest))
        | "1" -> (Some (FIX_PosReqResult_InvalidOrUnsupportedRequest))
        | "2" -> (Some (FIX_PosReqResult_NoPositionsFoundThatMatchCriteria))
        | "3" -> (Some (FIX_PosReqResult_NotAuthorizedToRequestPositions))
        | "4" -> (Some (FIX_PosReqResult_RequestForPositionNotSupported))
        | "99" -> (Some (FIX_PosReqResult_Other))
        | _ -> (None)
    )
;;

let parse_PosReqStatus ( str ) =
    (match str with
        | "0" -> (Some (FIX_PosReqStatus_Completed))
        | "1" -> (Some (FIX_PosReqStatus_CompletedWithWarnings))
        | "2" -> (Some (FIX_PosReqStatus_Rejected))
        | _ -> (None)
    )
;;

let parse_PosReqType ( str ) =
    (match str with
        | "0" -> (Some (FIX_PosReqType_Positions))
        | "1" -> (Some (FIX_PosReqType_Trades))
        | "2" -> (Some (FIX_PosReqType_Exercises))
        | "3" -> (Some (FIX_PosReqType_Assignments))
        | _ -> (None)
    )
;;

let parse_PosTransType ( str ) =
    (match str with
        | "1" -> (Some (FIX_PosTransType_Exercise))
        | "2" -> (Some (FIX_PosTransType_DoNotExercise))
        | "3" -> (Some (FIX_PosTransType_PositionAdjustment))
        | "4" -> (Some (FIX_PosTransType_PositionChangeSubmission))
        | "5" -> (Some (FIX_PosTransType_Pledge))
        | _ -> (None)
    )
;;

let parse_PosType ( str ) =
    (match str with
        | "TQ" -> (Some (FIX_PosType_TransactionQuantity))
        | "IAS" -> (Some (FIX_PosType_IntraSpreadQty))
        | "IES" -> (Some (FIX_PosType_InterSpreadQty))
        | "FIN" -> (Some (FIX_PosType_EndOfDayQty))
        | "SOD" -> (Some (FIX_PosType_StartOfDayQty))
        | "EX" -> (Some (FIX_PosType_OptionExerciseQty))
        | "AS" -> (Some (FIX_PosType_OptionAssignment))
        | "TX" -> (Some (FIX_PosType_TransactionFromExercise))
        | "TA" -> (Some (FIX_PosType_TransactionFromAssignment))
        | "PIT" -> (Some (FIX_PosType_PitTradeQty))
        | "TRF" -> (Some (FIX_PosType_TransferTradeQty))
        | "ETR" -> (Some (FIX_PosType_ElectronicTradeQty))
        | "ALC" -> (Some (FIX_PosType_AllocationTradeQty))
        | "PA" -> (Some (FIX_PosType_AdjustmentQty))
        | "ASF" -> (Some (FIX_PosType_AsOfTradeQty))
        | "DLV" -> (Some (FIX_PosType_DeliveryQty))
        | "TOT" -> (Some (FIX_PosType_TotalTransactionQty))
        | "XM" -> (Some (FIX_PosType_CrossMarginQty))
        | "SPL" -> (Some (FIX_PosType_IntegralSplit))
        | _ -> (None)
    )
;;

let parse_PositionEffect ( str ) =
    (match str with
        | "O" -> (Some (FIX_PositionEffect_Open))
        | "C" -> (Some (FIX_PositionEffect_Close))
        | "R" -> (Some (FIX_PositionEffect_Rolled))
        | "F" -> (Some (FIX_PositionEffect_FIFO))
        | _ -> (None)
    )
;;

let parse_PossDupFlag ( str ) =
    (match str with
        | "Y" -> (Some (FIX_PossDupFlag_PossibleDuplicate))
        | "N" -> (Some (FIX_PossDupFlag_OriginalTransmission))
        | _ -> (None)
    )
;;

let parse_PossResend ( str ) =
    (match str with
        | "Y" -> (Some (FIX_PossResend_PossibleResend))
        | "N" -> (Some (FIX_PossResend_OriginalTransmission))
        | _ -> (None)
    )
;;

let parse_PreallocMethod ( str ) =
    (match str with
        | "0" -> (Some (FIX_PreallocMethod_ProRata))
        | "1" -> (Some (FIX_PreallocMethod_DoNotProRata))
        | _ -> (None)
    )
;;

let parse_PreviouslyReported ( str ) =
    (match str with
        | "Y" -> (Some (FIX_PreviouslyReported_PerviouslyReportedToCounterparty))
        | "N" -> (Some (FIX_PreviouslyReported_NotReportedToCounterparty))
        | _ -> (None)
    )
;;

let parse_PriceType ( str ) =
    (match str with
        | "1" -> (Some (FIX_PriceType_Percentage))
        | "2" -> (Some (FIX_PriceType_PerUnit))
        | "3" -> (Some (FIX_PriceType_FixedAmount))
        | "4" -> (Some (FIX_PriceType_Discount))
        | "5" -> (Some (FIX_PriceType_Premium))
        | "6" -> (Some (FIX_PriceType_Spread))
        | "7" -> (Some (FIX_PriceType_TEDPrice))
        | "8" -> (Some (FIX_PriceType_TEDYield))
        | "9" -> (Some (FIX_PriceType_Yield))
        | "10" -> (Some (FIX_PriceType_FixedCabinetTradePrice))
        | "11" -> (Some (FIX_PriceType_VariableCabinetTradePrice))
        | _ -> (None)
    )
;;

let parse_PriorityIndicator ( str ) =
    (match str with
        | "0" -> (Some (FIX_PriorityIndicator_PriorityUnchanged))
        | "1" -> (Some (FIX_PriorityIndicator_LostPriorityAsResultOfOrderChange))
        | _ -> (None)
    )
;;

let parse_ProcessCode ( str ) =
    (match str with
        | "0" -> (Some (FIX_ProcessCode_Regular))
        | "1" -> (Some (FIX_ProcessCode_SoftDollar))
        | "2" -> (Some (FIX_ProcessCode_StepIn))
        | "3" -> (Some (FIX_ProcessCode_StepOut))
        | "4" -> (Some (FIX_ProcessCode_SoftDollarStepIn))
        | "5" -> (Some (FIX_ProcessCode_SoftDollarStepOut))
        | "6" -> (Some (FIX_ProcessCode_PlanSponsor))
        | _ -> (None)
    )
;;

let parse_Product ( str ) =
    (match str with
        | "1" -> (Some (FIX_Product_AGENCY))
        | "2" -> (Some (FIX_Product_COMMODITY))
        | "3" -> (Some (FIX_Product_CORPORATE))
        | "4" -> (Some (FIX_Product_CURRENCY))
        | "5" -> (Some (FIX_Product_EQUITY))
        | "6" -> (Some (FIX_Product_GOVERNMENT))
        | "7" -> (Some (FIX_Product_INDEX))
        | "8" -> (Some (FIX_Product_LOAN))
        | "9" -> (Some (FIX_Product_MONEYMARKET))
        | "10" -> (Some (FIX_Product_MORTGAGE))
        | "11" -> (Some (FIX_Product_MUNICIPAL))
        | "12" -> (Some (FIX_Product_OTHER))
        | "13" -> (Some (FIX_Product_FINANCING))
        | _ -> (None)
    )
;;

let parse_ProgRptReqs ( str ) =
    (match str with
        | "1" -> (Some (FIX_ProgRptReqs_BuySideRequests))
        | "2" -> (Some (FIX_ProgRptReqs_SellSideSends))
        | "3" -> (Some (FIX_ProgRptReqs_RealTimeExecutionReports))
        | _ -> (None)
    )
;;

let parse_PublishTrdIndicator ( str ) =
    (match str with
        | "Y" -> (Some (FIX_PublishTrdIndicator_ReportTrade))
        | "N" -> (Some (FIX_PublishTrdIndicator_DoNotReportTrade))
        | _ -> (None)
    )
;;

let parse_PutOrCall ( str ) =
    (match str with
        | "0" -> (Some (FIX_PutOrCall_Put))
        | "1" -> (Some (FIX_PutOrCall_Call))
        | _ -> (None)
    )
;;

let parse_QtyType ( str ) =
    (match str with
        | "0" -> (Some (FIX_QtyType_Units))
        | "1" -> (Some (FIX_QtyType_Contracts))
        | _ -> (None)
    )
;;

let parse_QuoteCancelType ( str ) =
    (match str with
        | "1" -> (Some (FIX_QuoteCancelType_CancelForOneOrMoreSecurities))
        | "2" -> (Some (FIX_QuoteCancelType_CancelForSecurityType))
        | "3" -> (Some (FIX_QuoteCancelType_CancelForUnderlyingSecurity))
        | "4" -> (Some (FIX_QuoteCancelType_CancelAllQuotes))
        | _ -> (None)
    )
;;

let parse_QuoteCondition ( str ) =
    (match str with
        | "A" -> (Some (FIX_QuoteCondition_Open))
        | "B" -> (Some (FIX_QuoteCondition_Closed))
        | "C" -> (Some (FIX_QuoteCondition_ExchangeBest))
        | "D" -> (Some (FIX_QuoteCondition_ConsolidatedBest))
        | "E" -> (Some (FIX_QuoteCondition_Locked))
        | "F" -> (Some (FIX_QuoteCondition_Crossed))
        | "G" -> (Some (FIX_QuoteCondition_Depth))
        | "H" -> (Some (FIX_QuoteCondition_FastTrading))
        | "I" -> (Some (FIX_QuoteCondition_NonFirm))
        | _ -> (None)
    )
;;

let parse_QuotePriceType ( str ) =
    (match str with
        | "1" -> (Some (FIX_QuotePriceType_Percent))
        | "2" -> (Some (FIX_QuotePriceType_PerShare))
        | "3" -> (Some (FIX_QuotePriceType_FixedAmount))
        | "4" -> (Some (FIX_QuotePriceType_Discount))
        | "5" -> (Some (FIX_QuotePriceType_Premium))
        | "6" -> (Some (FIX_QuotePriceType_Spread))
        | "7" -> (Some (FIX_QuotePriceType_TEDPrice))
        | "8" -> (Some (FIX_QuotePriceType_TEDYield))
        | "9" -> (Some (FIX_QuotePriceType_YieldSpread))
        | "10" -> (Some (FIX_QuotePriceType_Yield))
        | _ -> (None)
    )
;;

let parse_QuoteRejectReason ( str ) =
    (match str with
        | "1" -> (Some (FIX_QuoteRejectReason_UnknownSymbol))
        | "2" -> (Some (FIX_QuoteRejectReason_Exchange))
        | "3" -> (Some (FIX_QuoteRejectReason_QuoteRequestExceedsLimit))
        | "4" -> (Some (FIX_QuoteRejectReason_TooLateToEnter))
        | "5" -> (Some (FIX_QuoteRejectReason_UnknownQuote))
        | "6" -> (Some (FIX_QuoteRejectReason_DuplicateQuote))
        | "7" -> (Some (FIX_QuoteRejectReason_InvalidBid))
        | "8" -> (Some (FIX_QuoteRejectReason_InvalidPrice))
        | "9" -> (Some (FIX_QuoteRejectReason_NotAuthorizedToQuoteSecurity))
        | "99" -> (Some (FIX_QuoteRejectReason_Other))
        | _ -> (None)
    )
;;

let parse_QuoteRequestRejectReason ( str ) =
    (match str with
        | "1" -> (Some (FIX_QuoteRequestRejectReason_UnknownSymbol))
        | "2" -> (Some (FIX_QuoteRequestRejectReason_Exchange))
        | "3" -> (Some (FIX_QuoteRequestRejectReason_QuoteRequestExceedsLimit))
        | "4" -> (Some (FIX_QuoteRequestRejectReason_TooLateToEnter))
        | "5" -> (Some (FIX_QuoteRequestRejectReason_InvalidPrice))
        | "6" -> (Some (FIX_QuoteRequestRejectReason_NotAuthorizedToRequestQuote))
        | "7" -> (Some (FIX_QuoteRequestRejectReason_NoMatchForInquiry))
        | "8" -> (Some (FIX_QuoteRequestRejectReason_NoMarketForInstrument))
        | "9" -> (Some (FIX_QuoteRequestRejectReason_NoInventory))
        | "10" -> (Some (FIX_QuoteRequestRejectReason_Pass))
        | "99" -> (Some (FIX_QuoteRequestRejectReason_Other))
        | _ -> (None)
    )
;;

let parse_QuoteRequestType ( str ) =
    (match str with
        | "1" -> (Some (FIX_QuoteRequestType_Manual))
        | "2" -> (Some (FIX_QuoteRequestType_Automatic))
        | _ -> (None)
    )
;;

let parse_QuoteRespType ( str ) =
    (match str with
        | "1" -> (Some (FIX_QuoteRespType_Hit))
        | "2" -> (Some (FIX_QuoteRespType_Counter))
        | "3" -> (Some (FIX_QuoteRespType_Expired))
        | "4" -> (Some (FIX_QuoteRespType_Cover))
        | "5" -> (Some (FIX_QuoteRespType_DoneAway))
        | "6" -> (Some (FIX_QuoteRespType_Pass))
        | _ -> (None)
    )
;;

let parse_QuoteResponseLevel ( str ) =
    (match str with
        | "0" -> (Some (FIX_QuoteResponseLevel_NoAcknowledgement))
        | "1" -> (Some (FIX_QuoteResponseLevel_AcknowledgeOnlyNegativeOrErroneousQuotes))
        | "2" -> (Some (FIX_QuoteResponseLevel_AcknowledgeEachQuoteMessage))
        | _ -> (None)
    )
;;

let parse_QuoteStatus ( str ) =
    (match str with
        | "0" -> (Some (FIX_QuoteStatus_Accepted))
        | "1" -> (Some (FIX_QuoteStatus_CancelForSymbol))
        | "2" -> (Some (FIX_QuoteStatus_CanceledForSecurityType))
        | "3" -> (Some (FIX_QuoteStatus_CanceledForUnderlying))
        | "4" -> (Some (FIX_QuoteStatus_CanceledAll))
        | "5" -> (Some (FIX_QuoteStatus_Rejected))
        | "6" -> (Some (FIX_QuoteStatus_RemovedFromMarket))
        | "7" -> (Some (FIX_QuoteStatus_Expired))
        | "8" -> (Some (FIX_QuoteStatus_Query))
        | "9" -> (Some (FIX_QuoteStatus_QuoteNotFound))
        | "10" -> (Some (FIX_QuoteStatus_Pending))
        | "11" -> (Some (FIX_QuoteStatus_Pass))
        | "12" -> (Some (FIX_QuoteStatus_LockedMarketWarning))
        | "13" -> (Some (FIX_QuoteStatus_CrossMarketWarning))
        | "14" -> (Some (FIX_QuoteStatus_CanceledDueToLockMarket))
        | "15" -> (Some (FIX_QuoteStatus_CanceledDueToCrossMarket))
        | _ -> (None)
    )
;;

let parse_QuoteType ( str ) =
    (match str with
        | "0" -> (Some (FIX_QuoteType_Indicative))
        | "1" -> (Some (FIX_QuoteType_Tradeable))
        | "2" -> (Some (FIX_QuoteType_RestrictedTradeable))
        | "3" -> (Some (FIX_QuoteType_Counter))
        | _ -> (None)
    )
;;

let parse_RegistRejReasonCode ( str ) =
    (match str with
        | "1" -> (Some (FIX_RegistRejReasonCode_InvalidAccountType))
        | "2" -> (Some (FIX_RegistRejReasonCode_InvalidTaxExemptType))
        | "3" -> (Some (FIX_RegistRejReasonCode_InvalidOwnershipType))
        | "4" -> (Some (FIX_RegistRejReasonCode_NoRegDetails))
        | "5" -> (Some (FIX_RegistRejReasonCode_InvalidRegSeqNo))
        | "6" -> (Some (FIX_RegistRejReasonCode_InvalidRegDetails))
        | "7" -> (Some (FIX_RegistRejReasonCode_InvalidMailingDetails))
        | "8" -> (Some (FIX_RegistRejReasonCode_InvalidMailingInstructions))
        | "9" -> (Some (FIX_RegistRejReasonCode_InvalidInvestorID))
        | "10" -> (Some (FIX_RegistRejReasonCode_InvalidInvestorIDSource))
        | "11" -> (Some (FIX_RegistRejReasonCode_InvalidDateOfBirth))
        | "12" -> (Some (FIX_RegistRejReasonCode_InvalidCountry))
        | "13" -> (Some (FIX_RegistRejReasonCode_InvalidDistribInstns))
        | "14" -> (Some (FIX_RegistRejReasonCode_InvalidPercentage))
        | "15" -> (Some (FIX_RegistRejReasonCode_InvalidPaymentMethod))
        | "16" -> (Some (FIX_RegistRejReasonCode_InvalidAccountName))
        | "17" -> (Some (FIX_RegistRejReasonCode_InvalidAgentCode))
        | "18" -> (Some (FIX_RegistRejReasonCode_InvalidAccountNum))
        | "99" -> (Some (FIX_RegistRejReasonCode_Other))
        | _ -> (None)
    )
;;

let parse_RegistStatus ( str ) =
    (match str with
        | "A" -> (Some (FIX_RegistStatus_Accepted))
        | "R" -> (Some (FIX_RegistStatus_Rejected))
        | "H" -> (Some (FIX_RegistStatus_Held))
        | "N" -> (Some (FIX_RegistStatus_Reminder))
        | _ -> (None)
    )
;;

let parse_RegistTransType ( str ) =
    (match str with
        | "0" -> (Some (FIX_RegistTransType_New))
        | "1" -> (Some (FIX_RegistTransType_Replace))
        | "2" -> (Some (FIX_RegistTransType_Cancel))
        | _ -> (None)
    )
;;

let parse_ReportToExch ( str ) =
    (match str with
        | "Y" -> (Some (FIX_ReportToExch_ReceiverReports))
        | "N" -> (Some (FIX_ReportToExch_SenderReports))
        | _ -> (None)
    )
;;

let parse_ResetSeqNumFlag ( str ) =
    (match str with
        | "Y" -> (Some (FIX_ResetSeqNumFlag_Yes))
        | "N" -> (Some (FIX_ResetSeqNumFlag_No))
        | _ -> (None)
    )
;;

let parse_ResponseTransportType ( str ) =
    (match str with
        | "0" -> (Some (FIX_ResponseTransportType_Inband))
        | "1" -> (Some (FIX_ResponseTransportType_OutOfBand))
        | _ -> (None)
    )
;;

let parse_RoundingDirection ( str ) =
    (match str with
        | "0" -> (Some (FIX_RoundingDirection_RoundToNearest))
        | "1" -> (Some (FIX_RoundingDirection_RoundDown))
        | "2" -> (Some (FIX_RoundingDirection_RoundUp))
        | _ -> (None)
    )
;;

let parse_RoutingType ( str ) =
    (match str with
        | "1" -> (Some (FIX_RoutingType_TargetFirm))
        | "2" -> (Some (FIX_RoutingType_TargetList))
        | "3" -> (Some (FIX_RoutingType_BlockFirm))
        | "4" -> (Some (FIX_RoutingType_BlockList))
        | _ -> (None)
    )
;;

let parse_Scope ( str ) =
    (match str with
        | "1" -> (Some (FIX_Scope_LocalMarket))
        | "2" -> (Some (FIX_Scope_National))
        | "3" -> (Some (FIX_Scope_Global))
        | _ -> (None)
    )
;;

let parse_SecurityIDSource ( str ) =
    (match str with
        | "1" -> (Some (FIX_SecurityIDSource_CUSIP))
        | "2" -> (Some (FIX_SecurityIDSource_SEDOL))
        | "3" -> (Some (FIX_SecurityIDSource_QUIK))
        | "4" -> (Some (FIX_SecurityIDSource_ISINNumber))
        | "5" -> (Some (FIX_SecurityIDSource_RICCode))
        | "6" -> (Some (FIX_SecurityIDSource_ISOCurrencyCode))
        | "7" -> (Some (FIX_SecurityIDSource_ISOCountryCode))
        | "8" -> (Some (FIX_SecurityIDSource_ExchangeSymbol))
        | "9" -> (Some (FIX_SecurityIDSource_ConsolidatedTapeAssociation))
        | "A" -> (Some (FIX_SecurityIDSource_BloombergSymbol))
        | "B" -> (Some (FIX_SecurityIDSource_Wertpapier))
        | "C" -> (Some (FIX_SecurityIDSource_Dutch))
        | "D" -> (Some (FIX_SecurityIDSource_Valoren))
        | "E" -> (Some (FIX_SecurityIDSource_Sicovam))
        | "F" -> (Some (FIX_SecurityIDSource_Belgian))
        | "G" -> (Some (FIX_SecurityIDSource_Common))
        | "H" -> (Some (FIX_SecurityIDSource_ClearingHouse))
        | "I" -> (Some (FIX_SecurityIDSource_ISDAFpMLSpecification))
        | "J" -> (Some (FIX_SecurityIDSource_OptionPriceReportingAuthority))
        | _ -> (None)
    )
;;

let parse_SecurityListRequestType ( str ) =
    (match str with
        | "0" -> (Some (FIX_SecurityListRequestType_Symbol))
        | "1" -> (Some (FIX_SecurityListRequestType_SecurityTypeAnd))
        | "2" -> (Some (FIX_SecurityListRequestType_Product))
        | "3" -> (Some (FIX_SecurityListRequestType_TradingSessionID))
        | "4" -> (Some (FIX_SecurityListRequestType_AllSecurities))
        | _ -> (None)
    )
;;

let parse_SecurityRequestResult ( str ) =
    (match str with
        | "0" -> (Some (FIX_SecurityRequestResult_ValidRequest))
        | "1" -> (Some (FIX_SecurityRequestResult_InvalidOrUnsupportedRequest))
        | "2" -> (Some (FIX_SecurityRequestResult_NoInstrumentsFound))
        | "3" -> (Some (FIX_SecurityRequestResult_NotAuthorizedToRetrieveInstrumentData))
        | "4" -> (Some (FIX_SecurityRequestResult_InstrumentDataTemporarilyUnavailable))
        | "5" -> (Some (FIX_SecurityRequestResult_RequestForInstrumentDataNotSupported))
        | _ -> (None)
    )
;;

let parse_SecurityRequestType ( str ) =
    (match str with
        | "0" -> (Some (FIX_SecurityRequestType_RequestSecurityIdentityAndSpecifications))
        | "1" -> (Some (FIX_SecurityRequestType_RequestSecurityIdentityForSpecifications))
        | "2" -> (Some (FIX_SecurityRequestType_RequestListSecurityTypes))
        | "3" -> (Some (FIX_SecurityRequestType_RequestListSecurities))
        | _ -> (None)
    )
;;

let parse_SecurityResponseType ( str ) =
    (match str with
        | "1" -> (Some (FIX_SecurityResponseType_AcceptAsIs))
        | "2" -> (Some (FIX_SecurityResponseType_AcceptWithRevisions))
        | "5" -> (Some (FIX_SecurityResponseType_RejectSecurityProposal))
        | "6" -> (Some (FIX_SecurityResponseType_CannotMatchSelectionCriteria))
        | _ -> (None)
    )
;;

let parse_SecurityTradingStatus ( str ) =
    (match str with
        | "1" -> (Some (FIX_SecurityTradingStatus_OpeningDelay))
        | "2" -> (Some (FIX_SecurityTradingStatus_TradingHalt))
        | "3" -> (Some (FIX_SecurityTradingStatus_Resume))
        | "4" -> (Some (FIX_SecurityTradingStatus_NoOpen))
        | "5" -> (Some (FIX_SecurityTradingStatus_PriceIndication))
        | "6" -> (Some (FIX_SecurityTradingStatus_TradingRangeIndication))
        | "7" -> (Some (FIX_SecurityTradingStatus_MarketImbalanceBuy))
        | "8" -> (Some (FIX_SecurityTradingStatus_MarketImbalanceSell))
        | "9" -> (Some (FIX_SecurityTradingStatus_MarketOnCloseImbalanceBuy))
        | "10" -> (Some (FIX_SecurityTradingStatus_MarketOnCloseImbalanceSell))
        | "12" -> (Some (FIX_SecurityTradingStatus_NoMarketImbalance))
        | "13" -> (Some (FIX_SecurityTradingStatus_NoMarketOnCloseImbalance))
        | "14" -> (Some (FIX_SecurityTradingStatus_ITSPreOpening))
        | "15" -> (Some (FIX_SecurityTradingStatus_NewPriceIndication))
        | "16" -> (Some (FIX_SecurityTradingStatus_TradeDisseminationTime))
        | "17" -> (Some (FIX_SecurityTradingStatus_ReadyToTrade))
        | "18" -> (Some (FIX_SecurityTradingStatus_NotAvailableForTrading))
        | "19" -> (Some (FIX_SecurityTradingStatus_NotTradedOnThisMarket))
        | "20" -> (Some (FIX_SecurityTradingStatus_UnknownOrInvalid))
        | "21" -> (Some (FIX_SecurityTradingStatus_PreOpen))
        | "22" -> (Some (FIX_SecurityTradingStatus_OpeningRotation))
        | "23" -> (Some (FIX_SecurityTradingStatus_FastMarket))
        | _ -> (None)
    )
;;

let parse_SecurityType ( str ) =
    (match str with
        | "FUT" -> (Some (FIX_SecurityType_Future))
        | "OPT" -> (Some (FIX_SecurityType_Option))
        | "EUSUPRA" -> (Some (FIX_SecurityType_EuroSupranationalCoupons))
        | "FAC" -> (Some (FIX_SecurityType_FederalAgencyCoupon))
        | "FADN" -> (Some (FIX_SecurityType_FederalAgencyDiscountNote))
        | "PEF" -> (Some (FIX_SecurityType_PrivateExportFunding))
        | "SUPRA" -> (Some (FIX_SecurityType_USDSupranationalCoupons))
        | "CORP" -> (Some (FIX_SecurityType_CorporateBond))
        | "CPP" -> (Some (FIX_SecurityType_CorporatePrivatePlacement))
        | "CB" -> (Some (FIX_SecurityType_ConvertibleBond))
        | "DUAL" -> (Some (FIX_SecurityType_DualCurrency))
        | "EUCORP" -> (Some (FIX_SecurityType_EuroCorporateBond))
        | "XLINKD" -> (Some (FIX_SecurityType_IndexedLinked))
        | "STRUCT" -> (Some (FIX_SecurityType_StructuredNotes))
        | "YANK" -> (Some (FIX_SecurityType_YankeeCorporateBond))
        | "FOR" -> (Some (FIX_SecurityType_ForeignExchangeContract))
        | "CS" -> (Some (FIX_SecurityType_CommonStock))
        | "PS" -> (Some (FIX_SecurityType_PreferredStock))
        | "BRADY" -> (Some (FIX_SecurityType_BradyBond))
        | "EUSOV" -> (Some (FIX_SecurityType_EuroSovereigns))
        | "TBOND" -> (Some (FIX_SecurityType_USTreasuryBond))
        | "TINT" -> (Some (FIX_SecurityType_InterestStripFromAnyBondOrNote))
        | "TIPS" -> (Some (FIX_SecurityType_TreasuryInflationProtectedSecurities))
        | "TCAL" -> (Some (FIX_SecurityType_PrincipalStripOfACallableBondOrNote))
        | "TPRN" -> (Some (FIX_SecurityType_PrincipalStripFromANonCallableBondOrNote))
        | "UST" -> (Some (FIX_SecurityType_USTreasuryNoteOld))
        | "USTB" -> (Some (FIX_SecurityType_USTreasuryBillOld))
        | "TNOTE" -> (Some (FIX_SecurityType_USTreasuryNote))
        | "TBILL" -> (Some (FIX_SecurityType_USTreasuryBill))
        | "REPO" -> (Some (FIX_SecurityType_Repurchase))
        | "FORWARD" -> (Some (FIX_SecurityType_Forward))
        | "BUYSELL" -> (Some (FIX_SecurityType_BuySellback))
        | "SECLOAN" -> (Some (FIX_SecurityType_SecuritiesLoan))
        | "SECPLEDGE" -> (Some (FIX_SecurityType_SecuritiesPledge))
        | "TERM" -> (Some (FIX_SecurityType_TermLoan))
        | "RVLV" -> (Some (FIX_SecurityType_RevolverLoan))
        | "RVLVTRM" -> (Some (FIX_SecurityType_Revolver))
        | "BRIDGE" -> (Some (FIX_SecurityType_BridgeLoan))
        | "LOFC" -> (Some (FIX_SecurityType_LetterOfCredit))
        | "SWING" -> (Some (FIX_SecurityType_SwingLineFacility))
        | "DINP" -> (Some (FIX_SecurityType_DebtorInPossession))
        | "DEFLTED" -> (Some (FIX_SecurityType_Defaulted))
        | "WITHDRN" -> (Some (FIX_SecurityType_Withdrawn))
        | "REPLACD" -> (Some (FIX_SecurityType_Replaced))
        | "MATURED" -> (Some (FIX_SecurityType_Matured))
        | "AMENDED" -> (Some (FIX_SecurityType_Amended))
        | "RETIRED" -> (Some (FIX_SecurityType_Retired))
        | "BA" -> (Some (FIX_SecurityType_BankersAcceptance))
        | "BN" -> (Some (FIX_SecurityType_BankNotes))
        | "BOX" -> (Some (FIX_SecurityType_BillOfExchanges))
        | "CD" -> (Some (FIX_SecurityType_CertificateOfDeposit))
        | "CL" -> (Some (FIX_SecurityType_CallLoans))
        | "CP" -> (Some (FIX_SecurityType_CommercialPaper))
        | "DN" -> (Some (FIX_SecurityType_DepositNotes))
        | "EUCD" -> (Some (FIX_SecurityType_EuroCertificateOfDeposit))
        | "EUCP" -> (Some (FIX_SecurityType_EuroCommercialPaper))
        | "LQN" -> (Some (FIX_SecurityType_LiquidityNote))
        | "MTN" -> (Some (FIX_SecurityType_MediumTermNotes))
        | "ONITE" -> (Some (FIX_SecurityType_Overnight))
        | "PN" -> (Some (FIX_SecurityType_PromissoryNote))
        | "PZFJ" -> (Some (FIX_SecurityType_PlazosFijos))
        | "STN" -> (Some (FIX_SecurityType_ShortTermLoanNote))
        | "TD" -> (Some (FIX_SecurityType_TimeDeposit))
        | "XCN" -> (Some (FIX_SecurityType_ExtendedCommNote))
        | "YCD" -> (Some (FIX_SecurityType_YankeeCertificateOfDeposit))
        | "ABS" -> (Some (FIX_SecurityType_AssetBackedSecurities))
        | "CMBS" -> (Some (FIX_SecurityType_Corp))
        | "CMO" -> (Some (FIX_SecurityType_CollateralizedMortgageObligation))
        | "IET" -> (Some (FIX_SecurityType_IOETTEMortgage))
        | "MBS" -> (Some (FIX_SecurityType_MortgageBackedSecurities))
        | "MIO" -> (Some (FIX_SecurityType_MortgageInterestOnly))
        | "MPO" -> (Some (FIX_SecurityType_MortgagePrincipalOnly))
        | "MPP" -> (Some (FIX_SecurityType_MortgagePrivatePlacement))
        | "MPT" -> (Some (FIX_SecurityType_MiscellaneousPassThrough))
        | "PFAND" -> (Some (FIX_SecurityType_Pfandbriefe))
        | "TBA" -> (Some (FIX_SecurityType_ToBeAnnounced))
        | "AN" -> (Some (FIX_SecurityType_OtherAnticipationNotes))
        | "COFO" -> (Some (FIX_SecurityType_CertificateOfObligation))
        | "COFP" -> (Some (FIX_SecurityType_CertificateOfParticipation))
        | "GO" -> (Some (FIX_SecurityType_GeneralObligationBonds))
        | "MT" -> (Some (FIX_SecurityType_MandatoryTender))
        | "RAN" -> (Some (FIX_SecurityType_RevenueAnticipationNote))
        | "REV" -> (Some (FIX_SecurityType_RevenueBonds))
        | "SPCLA" -> (Some (FIX_SecurityType_SpecialAssessment))
        | "SPCLO" -> (Some (FIX_SecurityType_SpecialObligation))
        | "SPCLT" -> (Some (FIX_SecurityType_SpecialTax))
        | "TAN" -> (Some (FIX_SecurityType_TaxAnticipationNote))
        | "TAXA" -> (Some (FIX_SecurityType_TaxAllocation))
        | "TECP" -> (Some (FIX_SecurityType_TaxExemptCommercialPaper))
        | "TRAN" -> (Some (FIX_SecurityType_TaxRevenueAnticipationNote))
        | "VRDN" -> (Some (FIX_SecurityType_VariableRateDemandNote))
        | "WAR" -> (Some (FIX_SecurityType_Warrant))
        | "MF" -> (Some (FIX_SecurityType_MutualFund))
        | "MLEG" -> (Some (FIX_SecurityType_MultilegInstrument))
        | "NONE" -> (Some (FIX_SecurityType_NoSecurityType))
        | _ -> (None)
    )
;;

let parse_SettlCurrFxRateCalc ( str ) =
    (match str with
        | "M" -> (Some (FIX_SettlCurrFxRateCalc_Multiply))
        | "D" -> (Some (FIX_SettlCurrFxRateCalc_Divide))
        | _ -> (None)
    )
;;

let parse_SettlDeliveryType ( str ) =
    (match str with
        | "0" -> (Some (FIX_SettlDeliveryType_Versus))
        | "1" -> (Some (FIX_SettlDeliveryType_Free))
        | "2" -> (Some (FIX_SettlDeliveryType_TriParty))
        | "3" -> (Some (FIX_SettlDeliveryType_HoldInCustody))
        | _ -> (None)
    )
;;

let parse_SettlInstMode ( str ) =
    (match str with
        | "1" -> (Some (FIX_SettlInstMode_StandingInstructionsProvided))
        | "4" -> (Some (FIX_SettlInstMode_SpecificOrderForASingleAccount))
        | "5" -> (Some (FIX_SettlInstMode_RequestReject))
        | _ -> (None)
    )
;;

let parse_SettlInstReqRejCode ( str ) =
    (match str with
        | "0" -> (Some (FIX_SettlInstReqRejCode_UnableToProcessRequest))
        | "1" -> (Some (FIX_SettlInstReqRejCode_UnknownAccount))
        | "2" -> (Some (FIX_SettlInstReqRejCode_NoMatchingSettlementInstructionsFound))
        | "99" -> (Some (FIX_SettlInstReqRejCode_Other))
        | _ -> (None)
    )
;;

let parse_SettlInstSource ( str ) =
    (match str with
        | "1" -> (Some (FIX_SettlInstSource_BrokerCredit))
        | "2" -> (Some (FIX_SettlInstSource_Institution))
        | "3" -> (Some (FIX_SettlInstSource_Investor))
        | _ -> (None)
    )
;;

let parse_SettlInstTransType ( str ) =
    (match str with
        | "N" -> (Some (FIX_SettlInstTransType_New))
        | "C" -> (Some (FIX_SettlInstTransType_Cancel))
        | "R" -> (Some (FIX_SettlInstTransType_Replace))
        | "T" -> (Some (FIX_SettlInstTransType_Restate))
        | _ -> (None)
    )
;;

let parse_SettlPriceType ( str ) =
    (match str with
        | "1" -> (Some (FIX_SettlPriceType_Final))
        | "2" -> (Some (FIX_SettlPriceType_Theoretical))
        | _ -> (None)
    )
;;

let parse_SettlSessID ( str ) =
    (match str with
        | "ITD" -> (Some (FIX_SettlSessID_Intraday))
        | "RTH" -> (Some (FIX_SettlSessID_RegularTradingHours))
        | "ETH" -> (Some (FIX_SettlSessID_ElectronicTradingHours))
        | _ -> (None)
    )
;;

let parse_SettlType ( str ) =
    (match str with
        | "0" -> (Some (FIX_SettlType_Regular))
        | "1" -> (Some (FIX_SettlType_Cash))
        | "2" -> (Some (FIX_SettlType_NextDay))
        | "3" -> (Some (FIX_SettlType_TPlus2))
        | "4" -> (Some (FIX_SettlType_TPlus3))
        | "5" -> (Some (FIX_SettlType_TPlus4))
        | "6" -> (Some (FIX_SettlType_Future))
        | "7" -> (Some (FIX_SettlType_WhenAndIfIssued))
        | "8" -> (Some (FIX_SettlType_SellersOption))
        | "9" -> (Some (FIX_SettlType_TPlus5))
        | _ -> (None)
    )
;;

let parse_ShortSaleReason ( str ) =
    (match str with
        | "0" -> (Some (FIX_ShortSaleReason_DealerSoldShort))
        | "1" -> (Some (FIX_ShortSaleReason_DealerSoldShortExempt))
        | "2" -> (Some (FIX_ShortSaleReason_SellingCustomerSoldShort))
        | "3" -> (Some (FIX_ShortSaleReason_SellingCustomerSoldShortExempt))
        | "4" -> (Some (FIX_ShortSaleReason_QualifiedServiceRepresentative))
        | "5" -> (Some (FIX_ShortSaleReason_QSROrAGUContraSideSoldShortExempt))
        | _ -> (None)
    )
;;

let parse_Side ( str ) =
    (match str with
        | "1" -> (Some (FIX_Side_Buy))
        | "2" -> (Some (FIX_Side_Sell))
        | "3" -> (Some (FIX_Side_BuyMinus))
        | "4" -> (Some (FIX_Side_SellPlus))
        | "5" -> (Some (FIX_Side_SellShort))
        | "6" -> (Some (FIX_Side_SellShortExempt))
        | "7" -> (Some (FIX_Side_Undisclosed))
        | "8" -> (Some (FIX_Side_Cross))
        | "9" -> (Some (FIX_Side_CrossShort))
        | "A" -> (Some (FIX_Side_CrossShortExempt))
        | "B" -> (Some (FIX_Side_AsDefined))
        | "C" -> (Some (FIX_Side_Opposite))
        | "D" -> (Some (FIX_Side_Subscribe))
        | "E" -> (Some (FIX_Side_Redeem))
        | "F" -> (Some (FIX_Side_Lend))
        | "G" -> (Some (FIX_Side_Borrow))
        | _ -> (None)
    )
;;

let parse_SideMultiLegReportingType ( str ) =
    (match str with
        | "1" -> (Some (FIX_SideMultiLegReportingType_SingleSecurity))
        | "2" -> (Some (FIX_SideMultiLegReportingType_IndividualLegOfAMultilegSecurity))
        | "3" -> (Some (FIX_SideMultiLegReportingType_MultilegSecurity))
        | _ -> (None)
    )
;;

let parse_SideValueInd ( str ) =
    (match str with
        | "1" -> (Some (FIX_SideValueInd_SideValue1))
        | "2" -> (Some (FIX_SideValueInd_SideValue2))
        | _ -> (None)
    )
;;

let parse_SolicitedFlag ( str ) =
    (match str with
        | "Y" -> (Some (FIX_SolicitedFlag_WasSolicited))
        | "N" -> (Some (FIX_SolicitedFlag_WasNotSolicited))
        | _ -> (None)
    )
;;

let parse_StandInstDbType ( str ) =
    (match str with
        | "0" -> (Some (FIX_StandInstDbType_Other))
        | "1" -> (Some (FIX_StandInstDbType_DTCSID))
        | "2" -> (Some (FIX_StandInstDbType_ThomsonALERT))
        | "3" -> (Some (FIX_StandInstDbType_AGlobalCustodian))
        | "4" -> (Some (FIX_StandInstDbType_AccountNet))
        | _ -> (None)
    )
;;

let parse_StatusValue ( str ) =
    (match str with
        | "1" -> (Some (FIX_StatusValue_Connected))
        | "2" -> (Some (FIX_StatusValue_NotConnectedUnexpected))
        | "3" -> (Some (FIX_StatusValue_NotConnectedExpected))
        | "4" -> (Some (FIX_StatusValue_InProcess))
        | _ -> (None)
    )
;;

let parse_StipulationType ( str ) =
    (match str with
        | "AMT" -> (Some (FIX_StipulationType_AlternativeMinimumTax))
        | "AUTOREINV" -> (Some (FIX_StipulationType_AutoReinvestment))
        | "BANKQUAL" -> (Some (FIX_StipulationType_BankQualified))
        | "BGNCON" -> (Some (FIX_StipulationType_BargainConditions))
        | "COUPON" -> (Some (FIX_StipulationType_CouponRange))
        | "CURRENCY" -> (Some (FIX_StipulationType_ISOCurrencyCode))
        | "CUSTOMDATE" -> (Some (FIX_StipulationType_CustomStart))
        | "GEOG" -> (Some (FIX_StipulationType_Geographics))
        | "HAIRCUT" -> (Some (FIX_StipulationType_ValuationDiscount))
        | "INSURED" -> (Some (FIX_StipulationType_Insured))
        | "ISSUE" -> (Some (FIX_StipulationType_IssueDate))
        | "ISSUER" -> (Some (FIX_StipulationType_Issuer))
        | "ISSUESIZE" -> (Some (FIX_StipulationType_IssueSizeRange))
        | "LOOKBACK" -> (Some (FIX_StipulationType_LookbackDays))
        | "LOT" -> (Some (FIX_StipulationType_ExplicitLotIdentifier))
        | "LOTVAR" -> (Some (FIX_StipulationType_LotVariance))
        | "MAT" -> (Some (FIX_StipulationType_MaturityYearAndMonth))
        | "MATURITY" -> (Some (FIX_StipulationType_MaturityRange))
        | "MAXSUBS" -> (Some (FIX_StipulationType_MaximumSubstitutions))
        | "MINQTY" -> (Some (FIX_StipulationType_MinimumQuantity))
        | "MININCR" -> (Some (FIX_StipulationType_MinimumIncrement))
        | "MINDNOM" -> (Some (FIX_StipulationType_MinimumDenomination))
        | "PAYFREQ" -> (Some (FIX_StipulationType_PaymentFrequency))
        | "PIECES" -> (Some (FIX_StipulationType_NumberOfPieces))
        | "PMAX" -> (Some (FIX_StipulationType_PoolsMaximum))
        | "PPM" -> (Some (FIX_StipulationType_PoolsPerMillion))
        | "PPL" -> (Some (FIX_StipulationType_PoolsPerLot))
        | "PPT" -> (Some (FIX_StipulationType_PoolsPerTrade))
        | "PRICE" -> (Some (FIX_StipulationType_PriceRange))
        | "PRICEFREQ" -> (Some (FIX_StipulationType_PricingFrequency))
        | "PROD" -> (Some (FIX_StipulationType_ProductionYear))
        | "PROTECT" -> (Some (FIX_StipulationType_CallProtection))
        | "PURPOSE" -> (Some (FIX_StipulationType_Purpose))
        | "PXSOURCE" -> (Some (FIX_StipulationType_BenchmarkPriceSource))
        | "RATING" -> (Some (FIX_StipulationType_RatingSourceAndRange))
        | "REDEMPTION" -> (Some (FIX_StipulationType_TypeOfRedemption))
        | "RESTRICTED" -> (Some (FIX_StipulationType_Restricted))
        | "SECTOR" -> (Some (FIX_StipulationType_MarketSector))
        | "SECTYPE" -> (Some (FIX_StipulationType_SecurityTypeIncludedOrExcluded))
        | "STRUCT" -> (Some (FIX_StipulationType_Structure))
        | "SUBSFREQ" -> (Some (FIX_StipulationType_SubstitutionsFrequency))
        | "SUBSLEFT" -> (Some (FIX_StipulationType_SubstitutionsLeft))
        | "TEXT" -> (Some (FIX_StipulationType_FreeformText))
        | "TRDVAR" -> (Some (FIX_StipulationType_TradeVariance))
        | "WAC" -> (Some (FIX_StipulationType_WeightedAverageCoupon))
        | "WAL" -> (Some (FIX_StipulationType_WeightedAverageLifeCoupon))
        | "WALA" -> (Some (FIX_StipulationType_WeightedAverageLoanAge))
        | "WAM" -> (Some (FIX_StipulationType_WeightedAverageMaturity))
        | "WHOLE" -> (Some (FIX_StipulationType_WholePool))
        | "YIELD" -> (Some (FIX_StipulationType_YieldRange))
        | _ -> (None)
    )
;;

let parse_SubscriptionRequestType ( str ) =
    (match str with
        | "0" -> (Some (FIX_SubscriptionRequestType_Snapshot))
        | "1" -> (Some (FIX_SubscriptionRequestType_SnapshotAndUpdates))
        | "2" -> (Some (FIX_SubscriptionRequestType_DisablePreviousSnapshot))
        | _ -> (None)
    )
;;

let parse_TargetStrategy ( str ) =
    (match str with
        | "1" -> (Some (FIX_TargetStrategy_VWAP))
        | "2" -> (Some (FIX_TargetStrategy_Participate))
        | "3" -> (Some (FIX_TargetStrategy_MininizeMarketImpact))
        | _ -> (None)
    )
;;

let parse_TaxAdvantageType ( str ) =
    (match str with
        | "0" -> (Some (FIX_TaxAdvantageType_FIXNone))
        | "1" -> (Some (FIX_TaxAdvantageType_MaxiISA))
        | "2" -> (Some (FIX_TaxAdvantageType_TESSA))
        | "3" -> (Some (FIX_TaxAdvantageType_MiniCashISA))
        | "4" -> (Some (FIX_TaxAdvantageType_MiniStocksAndSharesISA))
        | "5" -> (Some (FIX_TaxAdvantageType_MiniInsuranceISA))
        | "6" -> (Some (FIX_TaxAdvantageType_CurrentYearPayment))
        | "7" -> (Some (FIX_TaxAdvantageType_PriorYearPayment))
        | "8" -> (Some (FIX_TaxAdvantageType_AssetTransfer))
        | "9" -> (Some (FIX_TaxAdvantageType_EmployeePriorYear))
        | "10" -> (Some (FIX_TaxAdvantageType_EmployeeCurrentYear))
        | "11" -> (Some (FIX_TaxAdvantageType_EmployerPriorYear))
        | "12" -> (Some (FIX_TaxAdvantageType_EmployerCurrentYear))
        | "13" -> (Some (FIX_TaxAdvantageType_NonFundPrototypeIRA))
        | "14" -> (Some (FIX_TaxAdvantageType_NonFundQualifiedPlan))
        | "15" -> (Some (FIX_TaxAdvantageType_DefinedContributionPlan))
        | "16" -> (Some (FIX_TaxAdvantageType_IRA))
        | "17" -> (Some (FIX_TaxAdvantageType_IRARollover))
        | "18" -> (Some (FIX_TaxAdvantageType_KEOGH))
        | "19" -> (Some (FIX_TaxAdvantageType_ProfitSharingPlan))
        | "20" -> (Some (FIX_TaxAdvantageType_US401K))
        | "21" -> (Some (FIX_TaxAdvantageType_SelfDirectedIRA))
        | "22" -> (Some (FIX_TaxAdvantageType_US403b))
        | "23" -> (Some (FIX_TaxAdvantageType_US457))
        | "24" -> (Some (FIX_TaxAdvantageType_RothIRAPrototype))
        | "25" -> (Some (FIX_TaxAdvantageType_RothIRANonPrototype))
        | "26" -> (Some (FIX_TaxAdvantageType_RothConversionIRAPrototype))
        | "27" -> (Some (FIX_TaxAdvantageType_RothConversionIRANonPrototype))
        | "28" -> (Some (FIX_TaxAdvantageType_EducationIRAPrototype))
        | "29" -> (Some (FIX_TaxAdvantageType_EducationIRANonPrototype))
        | _ -> (None)
    )
;;

let parse_TerminationType ( str ) =
    (match str with
        | "1" -> (Some (FIX_TerminationType_Overnight))
        | "2" -> (Some (FIX_TerminationType_Term))
        | "3" -> (Some (FIX_TerminationType_Flexible))
        | "4" -> (Some (FIX_TerminationType_Open))
        | _ -> (None)
    )
;;

let parse_TestMessageIndicator ( str ) =
    (match str with
        | "Y" -> (Some (FIX_TestMessageIndicator_True))
        | "N" -> (Some (FIX_TestMessageIndicator_Fales))
        | _ -> (None)
    )
;;

let parse_TickDirection ( str ) =
    (match str with
        | "0" -> (Some (FIX_TickDirection_PlusTick))
        | "1" -> (Some (FIX_TickDirection_ZeroPlusTick))
        | "2" -> (Some (FIX_TickDirection_MinusTick))
        | "3" -> (Some (FIX_TickDirection_ZeroMinusTick))
        | _ -> (None)
    )
;;

let parse_TimeInForce ( str ) =
    (match str with
        | "0" -> (Some (FIX_TimeInForce_Day))
        | "1" -> (Some (FIX_TimeInForce_GoodTillCancel))
        | "2" -> (Some (FIX_TimeInForce_AtTheOpening))
        | "3" -> (Some (FIX_TimeInForce_ImmediateOrCancel))
        | "4" -> (Some (FIX_TimeInForce_FillOrKill))
        | "5" -> (Some (FIX_TimeInForce_GoodTillCrossing))
        | "6" -> (Some (FIX_TimeInForce_GoodTillDate))
        | "7" -> (Some (FIX_TimeInForce_AtTheClose))
        | _ -> (None)
    )
;;

let parse_TradSesMethod ( str ) =
    (match str with
        | "1" -> (Some (FIX_TradSesMethod_Electronic))
        | "2" -> (Some (FIX_TradSesMethod_OpenOutcry))
        | "3" -> (Some (FIX_TradSesMethod_TwoParty))
        | _ -> (None)
    )
;;

let parse_TradSesMode ( str ) =
    (match str with
        | "1" -> (Some (FIX_TradSesMode_Testing))
        | "2" -> (Some (FIX_TradSesMode_Simulated))
        | "3" -> (Some (FIX_TradSesMode_Production))
        | _ -> (None)
    )
;;

let parse_TradSesStatus ( str ) =
    (match str with
        | "0" -> (Some (FIX_TradSesStatus_Unknown))
        | "1" -> (Some (FIX_TradSesStatus_Halted))
        | "2" -> (Some (FIX_TradSesStatus_Open))
        | "3" -> (Some (FIX_TradSesStatus_Closed))
        | "4" -> (Some (FIX_TradSesStatus_PreOpen))
        | "5" -> (Some (FIX_TradSesStatus_PreClose))
        | "6" -> (Some (FIX_TradSesStatus_RequestRejected))
        | _ -> (None)
    )
;;

let parse_TradSesStatusRejReason ( str ) =
    (match str with
        | "1" -> (Some (FIX_TradSesStatusRejReason_UnknownOrInvalidTradingSessionID))
        | "99" -> (Some (FIX_TradSesStatusRejReason_Other))
        | _ -> (None)
    )
;;

let parse_TradeAllocIndicator ( str ) =
    (match str with
        | "0" -> (Some (FIX_TradeAllocIndicator_AllocationNotRequired))
        | "1" -> (Some (FIX_TradeAllocIndicator_AllocationRequired))
        | "2" -> (Some (FIX_TradeAllocIndicator_UseAllocationProvidedWithTheTrade))
        | _ -> (None)
    )
;;

let parse_TradeCondition ( str ) =
    (match str with
        | "A" -> (Some (FIX_TradeCondition_Cash))
        | "B" -> (Some (FIX_TradeCondition_AveragePriceTrade))
        | "C" -> (Some (FIX_TradeCondition_CashTrade))
        | "D" -> (Some (FIX_TradeCondition_NextDay))
        | "E" -> (Some (FIX_TradeCondition_Opening))
        | "F" -> (Some (FIX_TradeCondition_IntradayTradeDetail))
        | "G" -> (Some (FIX_TradeCondition_Rule127Trade))
        | "H" -> (Some (FIX_TradeCondition_Rule155Trade))
        | "I" -> (Some (FIX_TradeCondition_SoldLast))
        | "J" -> (Some (FIX_TradeCondition_NextDayTrade))
        | "K" -> (Some (FIX_TradeCondition_Opened))
        | "L" -> (Some (FIX_TradeCondition_Seller))
        | "M" -> (Some (FIX_TradeCondition_Sold))
        | "N" -> (Some (FIX_TradeCondition_StoppedStock))
        | "P" -> (Some (FIX_TradeCondition_ImbalanceMoreBuyers))
        | "Q" -> (Some (FIX_TradeCondition_ImbalanceMoreSellers))
        | "R" -> (Some (FIX_TradeCondition_OpeningPrice))
        | _ -> (None)
    )
;;

let parse_TradeReportRejectReason ( str ) =
    (match str with
        | "0" -> (Some (FIX_TradeReportRejectReason_Successful))
        | "1" -> (Some (FIX_TradeReportRejectReason_InvalidPartyOnformation))
        | "2" -> (Some (FIX_TradeReportRejectReason_UnknownInstrument))
        | "3" -> (Some (FIX_TradeReportRejectReason_UnauthorizedToReportTrades))
        | "4" -> (Some (FIX_TradeReportRejectReason_InvalidTradeType))
        | "99" -> (Some (FIX_TradeReportRejectReason_Other))
        | _ -> (None)
    )
;;

let parse_TradeReportType ( str ) =
    (match str with
        | "0" -> (Some (FIX_TradeReportType_Submit))
        | "1" -> (Some (FIX_TradeReportType_Alleged))
        | "2" -> (Some (FIX_TradeReportType_Accept))
        | "3" -> (Some (FIX_TradeReportType_Decline))
        | "4" -> (Some (FIX_TradeReportType_Addendum))
        | "5" -> (Some (FIX_TradeReportType_No))
        | "6" -> (Some (FIX_TradeReportType_TradeReportCancel))
        | "7" -> (Some (FIX_TradeReportType_LockedIn))
        | _ -> (None)
    )
;;

let parse_TradeRequestResult ( str ) =
    (match str with
        | "0" -> (Some (FIX_TradeRequestResult_Successful))
        | "1" -> (Some (FIX_TradeRequestResult_InvalidOrUnknownInstrument))
        | "2" -> (Some (FIX_TradeRequestResult_InvalidTypeOfTradeRequested))
        | "3" -> (Some (FIX_TradeRequestResult_InvalidParties))
        | "4" -> (Some (FIX_TradeRequestResult_InvalidTransportTypeRequested))
        | "5" -> (Some (FIX_TradeRequestResult_InvalidDestinationRequested))
        | "8" -> (Some (FIX_TradeRequestResult_TradeRequestTypeNotSupported))
        | "9" -> (Some (FIX_TradeRequestResult_NotAuthorized))
        | "99" -> (Some (FIX_TradeRequestResult_Other))
        | _ -> (None)
    )
;;

let parse_TradeRequestStatus ( str ) =
    (match str with
        | "0" -> (Some (FIX_TradeRequestStatus_Accepted))
        | "1" -> (Some (FIX_TradeRequestStatus_Completed))
        | "2" -> (Some (FIX_TradeRequestStatus_Rejected))
        | _ -> (None)
    )
;;

let parse_TradeRequestType ( str ) =
    (match str with
        | "0" -> (Some (FIX_TradeRequestType_AllTrades))
        | "1" -> (Some (FIX_TradeRequestType_MatchedTradesMatchingCriteria))
        | "2" -> (Some (FIX_TradeRequestType_UnmatchedTradesThatMatchCriteria))
        | "3" -> (Some (FIX_TradeRequestType_UnreportedTradesThatMatchCriteria))
        | "4" -> (Some (FIX_TradeRequestType_AdvisoriesThatMatchCriteria))
        | _ -> (None)
    )
;;

let parse_TradedFlatSwitch ( str ) =
    (match str with
        | "Y" -> (Some (FIX_TradedFlatSwitch_TradedFlat))
        | "N" -> (Some (FIX_TradedFlatSwitch_NotTradedFlat))
        | _ -> (None)
    )
;;

let parse_TrdRegTimestampType ( str ) =
    (match str with
        | "1" -> (Some (FIX_TrdRegTimestampType_ExecutionTime))
        | "2" -> (Some (FIX_TrdRegTimestampType_TimeIn))
        | "3" -> (Some (FIX_TrdRegTimestampType_TimeOut))
        | "4" -> (Some (FIX_TrdRegTimestampType_BrokerReceipt))
        | "5" -> (Some (FIX_TrdRegTimestampType_BrokerExecution))
        | _ -> (None)
    )
;;

let parse_TrdRptStatus ( str ) =
    (match str with
        | "0" -> (Some (FIX_TrdRptStatus_Accepted))
        | "1" -> (Some (FIX_TrdRptStatus_Rejected))
        | _ -> (None)
    )
;;

let parse_TrdType ( str ) =
    (match str with
        | "0" -> (Some (FIX_TrdType_RegularTrade))
        | "1" -> (Some (FIX_TrdType_BlockTrade))
        | "2" -> (Some (FIX_TrdType_EFP))
        | "3" -> (Some (FIX_TrdType_Transfer))
        | "4" -> (Some (FIX_TrdType_LateTrade))
        | "5" -> (Some (FIX_TrdType_TTrade))
        | "6" -> (Some (FIX_TrdType_WeightedAveragePriceTrade))
        | "7" -> (Some (FIX_TrdType_BunchedTrade))
        | "8" -> (Some (FIX_TrdType_LateBunchedTrade))
        | "9" -> (Some (FIX_TrdType_PriorReferencePriceTrade))
        | "10" -> (Some (FIX_TrdType_AfterHoursTrade))
        | _ -> (None)
    )
;;

let parse_UnsolicitedIndicator ( str ) =
    (match str with
        | "Y" -> (Some (FIX_UnsolicitedIndicator_MessageIsBeingSentUnsolicited))
        | "N" -> (Some (FIX_UnsolicitedIndicator_MessageIsBeingSentAsAResultOfAPriorRequest))
        | _ -> (None)
    )
;;

let parse_Urgency ( str ) =
    (match str with
        | "0" -> (Some (FIX_Urgency_Normal))
        | "1" -> (Some (FIX_Urgency_Flash))
        | "2" -> (Some (FIX_Urgency_Background))
        | _ -> (None)
    )
;;

let parse_UserRequestType ( str ) =
    (match str with
        | "1" -> (Some (FIX_UserRequestType_LogOnUser))
        | "2" -> (Some (FIX_UserRequestType_LogOffUser))
        | "3" -> (Some (FIX_UserRequestType_ChangePasswordForUser))
        | "4" -> (Some (FIX_UserRequestType_RequestIndividualUserStatus))
        | _ -> (None)
    )
;;

let parse_UserStatus ( str ) =
    (match str with
        | "1" -> (Some (FIX_UserStatus_LoggedIn))
        | "2" -> (Some (FIX_UserStatus_NotLoggedIn))
        | "3" -> (Some (FIX_UserStatus_UserNotRecognised))
        | "4" -> (Some (FIX_UserStatus_PasswordIncorrect))
        | "5" -> (Some (FIX_UserStatus_PasswordChanged))
        | "6" -> (Some (FIX_UserStatus_Other))
        | _ -> (None)
    )
;;

let parse_WorkingIndicator ( str ) =
    (match str with
        | "Y" -> (Some (FIX_WorkingIndicator_Working))
        | "N" -> (Some (FIX_WorkingIndicator_NotWorking))
        | _ -> (None)
    )
;;

let parse_YieldType ( str ) =
    (match str with
        | "AFTERTAX" -> (Some (FIX_YieldType_AfterTaxYield))
        | "ANNUAL" -> (Some (FIX_YieldType_AnnualYield))
        | "ATISSUE" -> (Some (FIX_YieldType_YieldAtIssue))
        | "AVGMATURITY" -> (Some (FIX_YieldType_YieldToAverageMaturity))
        | "BOOK" -> (Some (FIX_YieldType_BookYield))
        | "CALL" -> (Some (FIX_YieldType_YieldToNextCall))
        | "CHANGE" -> (Some (FIX_YieldType_YieldChangeSinceClose))
        | "CLOSE" -> (Some (FIX_YieldType_ClosingYield))
        | "COMPOUND" -> (Some (FIX_YieldType_CompoundYield))
        | "CURRENT" -> (Some (FIX_YieldType_CurrentYield))
        | "GROSS" -> (Some (FIX_YieldType_TrueGrossYield))
        | "GOVTEQUIV" -> (Some (FIX_YieldType_GvntEquivalentYield))
        | "INFLATION" -> (Some (FIX_YieldType_YieldWithInflationAssumption))
        | "INVERSEFLOATER" -> (Some (FIX_YieldType_InverseFloaterBondYield))
        | "LASTCLOSE" -> (Some (FIX_YieldType_MostRecentClosingYield))
        | "LASTMONTH" -> (Some (FIX_YieldType_ClosingYieldMostRecentMonth))
        | "LASTQUARTER" -> (Some (FIX_YieldType_ClosingYieldMostRecentQuarter))
        | "LASTYEAR" -> (Some (FIX_YieldType_ClosingYieldMostRecentYear))
        | "LONGAVGLIFE" -> (Some (FIX_YieldType_YieldToLongestAverageLife))
        | "MARK" -> (Some (FIX_YieldType_MarkToMarketYield))
        | "MATURITY" -> (Some (FIX_YieldType_YieldToMaturity))
        | "NEXTREFUND" -> (Some (FIX_YieldType_YieldToNextRefund))
        | "OPENAVG" -> (Some (FIX_YieldType_OpenAverageYield))
        | "PUT" -> (Some (FIX_YieldType_YieldToNextPut))
        | "PREVCLOSE" -> (Some (FIX_YieldType_PreviousCloseYield))
        | "PROCEEDS" -> (Some (FIX_YieldType_ProceedsYield))
        | "SEMIANNUAL" -> (Some (FIX_YieldType_SemiAnnualYield))
        | "SHORTAVGLIFE" -> (Some (FIX_YieldType_YieldToShortestAverageLife))
        | "SIMPLE" -> (Some (FIX_YieldType_SimpleYield))
        | "TAXEQUIV" -> (Some (FIX_YieldType_TaxEquivalentYield))
        | "TENDER" -> (Some (FIX_YieldType_YieldToTenderDate))
        | "TRUE" -> (Some (FIX_YieldType_TrueYield))
        | "VALUE1/32" -> (Some (FIX_YieldType_YieldValueOf132))
        | "WORST" -> (Some (FIX_YieldType_YieldToWorst))
        | _ -> (None)
    )
;;

let parse_week ( str ) =
    (match str with
        | "noweek" -> (Some (FIX_week_noweek))
        | "w1" -> (Some (FIX_week_w1))
        | "w2" -> (Some (FIX_week_w2))
        | "w3" -> (Some (FIX_week_w3))
        | "w4" -> (Some (FIX_week_w4))
        | "w5" -> (Some (FIX_week_w5))
        | _ -> (None)
    )
;;

let parse_Currency ( str ) =
    (match str with
        | "EUR" -> (Some (FIX_Currency_EUR))
        | "GBP" -> (Some (FIX_Currency_GBP))
        | "USD" -> (Some (FIX_Currency_USD))
        | _ -> (None)
    )
;;

let parse_Country ( str ) =
    (match str with
        | "DE" -> (Some (FIX_Country_DE))
        | "GB" -> (Some (FIX_Country_GB))
        | "US" -> (Some (FIX_Country_US))
        | _ -> (None)
    )
;;

let parse_Exchange ( str ) =
    (match str with
        | "XLON" -> (Some (FIX_Exchange_XLON))
        | "XNYS" -> (Some (FIX_Exchange_XNYS))
        | "XNAS" -> (Some (FIX_Exchange_XNAS))
        | "XJAS" -> (Some (FIX_Exchange_XJAS))
        | "XSHG" -> (Some (FIX_Exchange_XSHG))
        | "SHSC" -> (Some (FIX_Exchange_SHSC))
        | _ -> (None)
    )
;;
