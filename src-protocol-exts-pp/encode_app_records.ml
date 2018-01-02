(* Aesthetic Integration copyright 2017 *)
(* @meta[imandra_ignore] on @end *)
 open Encode_app_enums;;
 open Encode_base_types;;
 open Encode_datetime;;
 open Encode_utils;;
 open Full_app_records;;
(* @meta[imandra_ignore] off @end *)

let encode_PtysSubGrp ( msg ) =
    (@) (("523",enc_opt encode_string msg.f_PtysSubGrp_PartySubID) :: (("803",enc_opt encode_PartySubIDType msg.f_PtysSubGrp_PartySubIDType) :: [])) []
;;

let encode_EvntGrp ( msg ) =
    (@) (("865",enc_opt encode_EventType msg.f_EvntGrp_EventType) :: (("866",enc_opt encode_LocalMktDate msg.f_EvntGrp_EventDate) :: (("867",enc_opt encode_float msg.f_EvntGrp_EventPx) :: (("868",enc_opt encode_string msg.f_EvntGrp_EventText) :: [])))) []
;;

let encode_CpctyConfGrp ( msg ) =
    (@) (("528",enc_opt encode_OrderCapacity msg.f_CpctyConfGrp_OrderCapacity) :: (("529",enc_opt encode_OrderRestrictions msg.f_CpctyConfGrp_OrderRestrictions) :: (("863",enc_opt encode_float msg.f_CpctyConfGrp_OrderCapacityQty) :: []))) []
;;

let encode_CommissionData ( msg ) =
    (@) (("12",enc_opt encode_float msg.f_CommissionData_Commission) :: (("13",enc_opt encode_CommType msg.f_CommissionData_CommType) :: (("479",enc_opt encode_Currency msg.f_CommissionData_CommCurrency) :: (("497",enc_opt encode_FundRenewWaiv msg.f_CommissionData_FundRenewWaiv) :: [])))) []
;;

let encode_TrdRegTimestamps ( msg ) =
    (@) (("769",enc_opt encode_UTCTimestamp msg.f_TrdRegTimestamps_TrdRegTimestamp) :: (("770",enc_opt encode_TrdRegTimestampType msg.f_TrdRegTimestamps_TrdRegTimestampType) :: (("771",enc_opt encode_string msg.f_TrdRegTimestamps_TrdRegTimestampOrigin) :: []))) []
;;

let encode_RoutingGrp ( msg ) =
    (@) (("216",enc_opt encode_RoutingType msg.f_RoutingGrp_RoutingType) :: (("217",enc_opt encode_string msg.f_RoutingGrp_RoutingID) :: [])) []
;;

let encode_LegBenchmarkCurveData ( msg ) =
    (@) (("676",enc_opt encode_Currency msg.f_LegBenchmarkCurveData_LegBenchmarkCurveCurrency) :: (("677",enc_opt encode_string msg.f_LegBenchmarkCurveData_LegBenchmarkCurveName) :: (("678",enc_opt encode_string msg.f_LegBenchmarkCurveData_LegBenchmarkCurvePoint) :: (("679",enc_opt encode_float msg.f_LegBenchmarkCurveData_LegBenchmarkPrice) :: (("680",enc_opt encode_int msg.f_LegBenchmarkCurveData_LegBenchmarkPriceType) :: []))))) []
;;

let encode_ExecCollGrp ( msg ) =
    (@) (("17",enc_opt encode_string msg.f_ExecCollGrp_ExecID) :: []) []
;;

let encode_BidCompReqGrp ( msg ) =
    (@) (("66",enc_opt encode_string msg.f_BidCompReqGrp_ListID) :: (("54",enc_opt encode_Side msg.f_BidCompReqGrp_Side) :: (("336",enc_opt encode_string msg.f_BidCompReqGrp_TradingSessionID) :: (("625",enc_opt encode_string msg.f_BidCompReqGrp_TradingSessionSubID) :: (("430",enc_opt encode_NetGrossInd msg.f_BidCompReqGrp_NetGrossInd) :: (("63",enc_opt encode_SettlType msg.f_BidCompReqGrp_SettlType) :: (("64",enc_opt encode_LocalMktDate msg.f_BidCompReqGrp_SettlDate) :: (("1",enc_opt encode_string msg.f_BidCompReqGrp_Account) :: (("660",enc_opt encode_AcctIDSource msg.f_BidCompReqGrp_AcctIDSource) :: []))))))))) []
;;

let encode_Stipulations ( msg ) =
    (@) (("233",enc_opt encode_StipulationType msg.f_Stipulations_StipulationType) :: (("234",enc_opt encode_string msg.f_Stipulations_StipulationValue) :: [])) []
;;

let encode_LogonMsgTypes ( msg ) =
    (@) (("372",enc_opt encode_string msg.f_LogonMsgTypes_RefMsgType) :: (("385",enc_opt encode_MsgDirection msg.f_LogonMsgTypes_MsgDirection) :: [])) []
;;

let encode_TrdCapDtGrp ( msg ) =
    (@) (("75",enc_opt encode_LocalMktDate msg.f_TrdCapDtGrp_TradeDate) :: (("60",enc_opt encode_UTCTimestamp msg.f_TrdCapDtGrp_TransactTime) :: [])) []
;;

let encode_Hop ( msg ) =
    (@) (("628",enc_opt encode_string msg.f_Hop_HopCompID) :: (("629",enc_opt encode_UTCTimestamp msg.f_Hop_HopSendingTime) :: (("630",enc_opt encode_int msg.f_Hop_HopRefID) :: []))) []
;;

let encode_TrdCollGrp ( msg ) =
    (@) (("571",enc_opt encode_string msg.f_TrdCollGrp_TradeReportID) :: (("818",enc_opt encode_string msg.f_TrdCollGrp_SecondaryTradeReportID) :: [])) []
;;

let encode_MDFullGrp ( msg ) =
    (@) (("269",enc_opt encode_MDEntryType msg.f_MDFullGrp_MDEntryType) :: (("270",enc_opt encode_float msg.f_MDFullGrp_MDEntryPx) :: (("15",enc_opt encode_Currency msg.f_MDFullGrp_Currency) :: (("271",enc_opt encode_float msg.f_MDFullGrp_MDEntrySize) :: (("272",enc_opt encode_UTCDateOnly msg.f_MDFullGrp_MDEntryDate) :: (("273",enc_opt encode_UTCTimeOnly msg.f_MDFullGrp_MDEntryTime) :: (("274",enc_opt encode_TickDirection msg.f_MDFullGrp_TickDirection) :: (("275",enc_opt encode_Exchange msg.f_MDFullGrp_MDMkt) :: (("336",enc_opt encode_string msg.f_MDFullGrp_TradingSessionID) :: (("625",enc_opt encode_string msg.f_MDFullGrp_TradingSessionSubID) :: (("276",enc_opt encode_QuoteCondition msg.f_MDFullGrp_QuoteCondition) :: (("277",enc_opt encode_TradeCondition msg.f_MDFullGrp_TradeCondition) :: (("282",enc_opt encode_string msg.f_MDFullGrp_MDEntryOriginator) :: (("283",enc_opt encode_string msg.f_MDFullGrp_LocationID) :: (("284",enc_opt encode_string msg.f_MDFullGrp_DeskID) :: (("286",enc_opt encode_OpenCloseSettlFlag msg.f_MDFullGrp_OpenCloseSettlFlag) :: (("59",enc_opt encode_TimeInForce msg.f_MDFullGrp_TimeInForce) :: (("432",enc_opt encode_LocalMktDate msg.f_MDFullGrp_ExpireDate) :: (("126",enc_opt encode_UTCTimestamp msg.f_MDFullGrp_ExpireTime) :: (("110",enc_opt encode_float msg.f_MDFullGrp_MinQty) :: (("18",enc_opt encode_ExecInst msg.f_MDFullGrp_ExecInst) :: (("287",enc_opt encode_int msg.f_MDFullGrp_SellerDays) :: (("37",enc_opt encode_string msg.f_MDFullGrp_OrderID) :: (("299",enc_opt encode_string msg.f_MDFullGrp_QuoteEntryID) :: (("288",enc_opt encode_string msg.f_MDFullGrp_MDEntryBuyer) :: (("289",enc_opt encode_string msg.f_MDFullGrp_MDEntrySeller) :: (("346",enc_opt encode_int msg.f_MDFullGrp_NumberOfOrders) :: (("290",enc_opt encode_int msg.f_MDFullGrp_MDEntryPositionNo) :: (("546",enc_opt encode_Scope msg.f_MDFullGrp_Scope) :: (("811",enc_opt encode_float msg.f_MDFullGrp_PriceDelta) :: (("58",enc_opt encode_string msg.f_MDFullGrp_Text) :: (("354",enc_opt encode_int msg.f_MDFullGrp_EncodedTextLen) :: (("355",enc_opt encode_string msg.f_MDFullGrp_EncodedText) :: []))))))))))))))))))))))))))))))))) []
;;

let encode_NstdPtysSubGrp ( msg ) =
    (@) (("545",enc_opt encode_string msg.f_NstdPtysSubGrp_NestedPartySubID) :: (("805",enc_opt encode_int msg.f_NstdPtysSubGrp_NestedPartySubIDType) :: [])) []
;;

let encode_SettlPtysSubGrp ( msg ) =
    (@) (("785",enc_opt encode_string msg.f_SettlPtysSubGrp_SettlPartySubID) :: (("786",enc_opt encode_int msg.f_SettlPtysSubGrp_SettlPartySubIDType) :: [])) []
;;

let encode_PegInstructions ( msg ) =
    (@) (("211",enc_opt encode_float msg.f_PegInstructions_PegOffsetValue) :: (("835",enc_opt encode_PegMoveType msg.f_PegInstructions_PegMoveType) :: (("836",enc_opt encode_PegOffsetType msg.f_PegInstructions_PegOffsetType) :: (("837",enc_opt encode_PegLimitType msg.f_PegInstructions_PegLimitType) :: (("838",enc_opt encode_PegRoundDirection msg.f_PegInstructions_PegRoundDirection) :: (("840",enc_opt encode_PegScope msg.f_PegInstructions_PegScope) :: [])))))) []
;;

let encode_LegStipulations ( msg ) =
    (@) (("688",enc_opt encode_string msg.f_LegStipulations_LegStipulationType) :: (("689",enc_opt encode_string msg.f_LegStipulations_LegStipulationValue) :: [])) []
;;

let encode_NstdPtys3SubGrp ( msg ) =
    (@) (("953",enc_opt encode_string msg.f_NstdPtys3SubGrp_Nested3PartySubID) :: (("954",enc_opt encode_int msg.f_NstdPtys3SubGrp_Nested3PartySubIDType) :: [])) []
;;

let encode_YieldData ( msg ) =
    (@) (("235",enc_opt encode_YieldType msg.f_YieldData_YieldType) :: (("236",enc_opt encode_float msg.f_YieldData_Yield) :: (("701",enc_opt encode_LocalMktDate msg.f_YieldData_YieldCalcDate) :: (("696",enc_opt encode_LocalMktDate msg.f_YieldData_YieldRedemptionDate) :: (("697",enc_opt encode_float msg.f_YieldData_YieldRedemptionPrice) :: (("698",enc_opt encode_int msg.f_YieldData_YieldRedemptionPriceType) :: [])))))) []
;;

let encode_CompIDStatGrp ( msg ) =
    (@) (("930",enc_opt encode_string msg.f_CompIDStatGrp_RefCompID) :: (("931",enc_opt encode_string msg.f_CompIDStatGrp_RefSubID) :: (("283",enc_opt encode_string msg.f_CompIDStatGrp_LocationID) :: (("284",enc_opt encode_string msg.f_CompIDStatGrp_DeskID) :: (("928",enc_opt encode_StatusValue msg.f_CompIDStatGrp_StatusValue) :: (("929",enc_opt encode_string msg.f_CompIDStatGrp_StatusText) :: [])))))) []
;;

let encode_AttrbGrp ( msg ) =
    (@) (("871",enc_opt encode_InstrAttribType msg.f_AttrbGrp_InstrAttribType) :: (("872",enc_opt encode_string msg.f_AttrbGrp_InstrAttribValue) :: [])) []
;;

let encode_MDRjctGrp ( msg ) =
    (@) (("817",enc_opt encode_string msg.f_MDRjctGrp_AltMDSourceID) :: []) []
;;

let encode_AffectedOrdGrp ( msg ) =
    (@) (("41",enc_opt encode_string msg.f_AffectedOrdGrp_OrigClOrdID) :: (("535",enc_opt encode_string msg.f_AffectedOrdGrp_AffectedOrderID) :: (("536",enc_opt encode_string msg.f_AffectedOrdGrp_AffectedSecondaryOrderID) :: []))) []
;;

let encode_UnderlyingStipulations ( msg ) =
    (@) (("888",enc_opt encode_string msg.f_UnderlyingStipulations_UnderlyingStipType) :: (("889",enc_opt encode_string msg.f_UnderlyingStipulations_UnderlyingStipValue) :: [])) []
;;

let encode_ExecsGrp ( msg ) =
    (@) (("17",enc_opt encode_string msg.f_ExecsGrp_ExecID) :: []) []
;;

let encode_MDReqGrp ( msg ) =
    (@) (("269",enc_opt encode_MDEntryType msg.f_MDReqGrp_MDEntryType) :: []) []
;;

let encode_SecTypesGrp ( msg ) =
    (@) (("167",enc_opt encode_SecurityType msg.f_SecTypesGrp_SecurityType) :: (("762",enc_opt encode_string msg.f_SecTypesGrp_SecuritySubType) :: (("460",enc_opt encode_Product msg.f_SecTypesGrp_Product) :: (("461",enc_opt encode_string msg.f_SecTypesGrp_CFICode) :: [])))) []
;;

let encode_CompIDReqGrp ( msg ) =
    (@) (("930",enc_opt encode_string msg.f_CompIDReqGrp_RefCompID) :: (("931",enc_opt encode_string msg.f_CompIDReqGrp_RefSubID) :: (("283",enc_opt encode_string msg.f_CompIDReqGrp_LocationID) :: (("284",enc_opt encode_string msg.f_CompIDReqGrp_DeskID) :: [])))) []
;;

let encode_RgstDistInstGrp ( msg ) =
    (@) (("477",enc_opt encode_DistribPaymentMethod msg.f_RgstDistInstGrp_DistribPaymentMethod) :: (("512",enc_opt encode_float msg.f_RgstDistInstGrp_DistribPercentage) :: (("478",enc_opt encode_Currency msg.f_RgstDistInstGrp_CashDistribCurr) :: (("498",enc_opt encode_string msg.f_RgstDistInstGrp_CashDistribAgentName) :: (("499",enc_opt encode_string msg.f_RgstDistInstGrp_CashDistribAgentCode) :: (("500",enc_opt encode_string msg.f_RgstDistInstGrp_CashDistribAgentAcctNumber) :: (("501",enc_opt encode_string msg.f_RgstDistInstGrp_CashDistribPayRef) :: (("502",enc_opt encode_string msg.f_RgstDistInstGrp_CashDistribAgentAcctName) :: [])))))))) []
;;

let encode_UndSecAltIDGrp ( msg ) =
    (@) (("458",enc_opt encode_string msg.f_UndSecAltIDGrp_UnderlyingSecurityAltID) :: (("459",enc_opt encode_string msg.f_UndSecAltIDGrp_UnderlyingSecurityAltIDSource) :: [])) []
;;

let encode_DiscretionInstructions ( msg ) =
    (@) (("388",enc_opt encode_DiscretionInst msg.f_DiscretionInstructions_DiscretionInst) :: (("389",enc_opt encode_float msg.f_DiscretionInstructions_DiscretionOffsetValue) :: (("841",enc_opt encode_DiscretionMoveType msg.f_DiscretionInstructions_DiscretionMoveType) :: (("842",enc_opt encode_DiscretionOffsetType msg.f_DiscretionInstructions_DiscretionOffsetType) :: (("843",enc_opt encode_DiscretionLimitType msg.f_DiscretionInstructions_DiscretionLimitType) :: (("844",enc_opt encode_DiscretionRoundDirection msg.f_DiscretionInstructions_DiscretionRoundDirection) :: (("846",enc_opt encode_DiscretionScope msg.f_DiscretionInstructions_DiscretionScope) :: []))))))) []
;;

let encode_QuotQualGrp ( msg ) =
    (@) (("695",enc_opt encode_char msg.f_QuotQualGrp_QuoteQualifier) :: []) []
;;

let encode_LinesOfTextGrp ( msg ) =
    (@) (("58",enc_opt encode_string msg.f_LinesOfTextGrp_Text) :: (("354",enc_opt encode_int msg.f_LinesOfTextGrp_EncodedTextLen) :: (("355",enc_opt encode_string msg.f_LinesOfTextGrp_EncodedText) :: []))) []
;;

let encode_FinancingDetails ( msg ) =
    (@) (("913",enc_opt encode_string msg.f_FinancingDetails_AgreementDesc) :: (("914",enc_opt encode_string msg.f_FinancingDetails_AgreementID) :: (("915",enc_opt encode_LocalMktDate msg.f_FinancingDetails_AgreementDate) :: (("918",enc_opt encode_Currency msg.f_FinancingDetails_AgreementCurrency) :: (("788",enc_opt encode_TerminationType msg.f_FinancingDetails_TerminationType) :: (("916",enc_opt encode_LocalMktDate msg.f_FinancingDetails_StartDate) :: (("917",enc_opt encode_LocalMktDate msg.f_FinancingDetails_EndDate) :: (("919",enc_opt encode_DeliveryType msg.f_FinancingDetails_DeliveryType) :: (("898",enc_opt encode_float msg.f_FinancingDetails_MarginRatio) :: []))))))))) []
;;

let encode_ExecAllocGrp ( msg ) =
    (@) (("32",enc_opt encode_float msg.f_ExecAllocGrp_LastQty) :: (("17",enc_opt encode_string msg.f_ExecAllocGrp_ExecID) :: (("527",enc_opt encode_string msg.f_ExecAllocGrp_SecondaryExecID) :: (("31",enc_opt encode_float msg.f_ExecAllocGrp_LastPx) :: (("669",enc_opt encode_float msg.f_ExecAllocGrp_LastParPx) :: (("29",enc_opt encode_LastCapacity msg.f_ExecAllocGrp_LastCapacity) :: [])))))) []
;;

let encode_LegSecAltIDGrp ( msg ) =
    (@) (("605",enc_opt encode_string msg.f_LegSecAltIDGrp_LegSecurityAltID) :: (("606",enc_opt encode_string msg.f_LegSecAltIDGrp_LegSecurityAltIDSource) :: [])) []
;;

let encode_AllocAckGrp ( msg ) =
    (@) (("79",enc_opt encode_string msg.f_AllocAckGrp_AllocAccount) :: (("661",enc_opt encode_int msg.f_AllocAckGrp_AllocAcctIDSource) :: (("366",enc_opt encode_float msg.f_AllocAckGrp_AllocPrice) :: (("467",enc_opt encode_string msg.f_AllocAckGrp_IndividualAllocID) :: (("776",enc_opt encode_int msg.f_AllocAckGrp_IndividualAllocRejCode) :: (("161",enc_opt encode_string msg.f_AllocAckGrp_AllocText) :: (("360",enc_opt encode_int msg.f_AllocAckGrp_EncodedAllocTextLen) :: (("361",enc_opt encode_string msg.f_AllocAckGrp_EncodedAllocText) :: [])))))))) []
;;

let encode_OrderQtyData ( msg ) =
    (@) (("38",enc_opt encode_float msg.f_OrderQtyData_OrderQty) :: (("152",enc_opt encode_float msg.f_OrderQtyData_CashOrderQty) :: (("516",enc_opt encode_float msg.f_OrderQtyData_OrderPercent) :: (("468",enc_opt encode_RoundingDirection msg.f_OrderQtyData_RoundingDirection) :: (("469",enc_opt encode_float msg.f_OrderQtyData_RoundingModulus) :: []))))) []
;;

let encode_BidDescReqGrp ( msg ) =
    (@) (("399",enc_opt encode_BidDescriptorType msg.f_BidDescReqGrp_BidDescriptorType) :: (("400",enc_opt encode_string msg.f_BidDescReqGrp_BidDescriptor) :: (("401",enc_opt encode_SideValueInd msg.f_BidDescReqGrp_SideValueInd) :: (("404",enc_opt encode_float msg.f_BidDescReqGrp_LiquidityValue) :: (("441",enc_opt encode_int msg.f_BidDescReqGrp_LiquidityNumSecurities) :: (("402",enc_opt encode_float msg.f_BidDescReqGrp_LiquidityPctLow) :: (("403",enc_opt encode_float msg.f_BidDescReqGrp_LiquidityPctHigh) :: (("405",enc_opt encode_float msg.f_BidDescReqGrp_EFPTrackingError) :: (("406",enc_opt encode_float msg.f_BidDescReqGrp_FairValue) :: (("407",enc_opt encode_float msg.f_BidDescReqGrp_OutsideIndexPct) :: (("408",enc_opt encode_float msg.f_BidDescReqGrp_ValueOfFutures) :: []))))))))))) []
;;

let encode_ContAmtGrp ( msg ) =
    (@) (("519",enc_opt encode_ContAmtType msg.f_ContAmtGrp_ContAmtType) :: (("520",enc_opt encode_float msg.f_ContAmtGrp_ContAmtValue) :: (("521",enc_opt encode_Currency msg.f_ContAmtGrp_ContAmtCurr) :: []))) []
;;

let encode_OrdListStatGrp ( msg ) =
    (@) (("11",enc_opt encode_string msg.f_OrdListStatGrp_ClOrdID) :: (("526",enc_opt encode_string msg.f_OrdListStatGrp_SecondaryClOrdID) :: (("14",enc_opt encode_float msg.f_OrdListStatGrp_CumQty) :: (("39",enc_opt encode_OrdStatus msg.f_OrdListStatGrp_OrdStatus) :: (("636",enc_opt encode_WorkingIndicator msg.f_OrdListStatGrp_WorkingIndicator) :: (("151",enc_opt encode_float msg.f_OrdListStatGrp_LeavesQty) :: (("84",enc_opt encode_float msg.f_OrdListStatGrp_CxlQty) :: (("6",enc_opt encode_float msg.f_OrdListStatGrp_AvgPx) :: (("103",enc_opt encode_OrdRejReason msg.f_OrdListStatGrp_OrdRejReason) :: (("58",enc_opt encode_string msg.f_OrdListStatGrp_Text) :: (("354",enc_opt encode_int msg.f_OrdListStatGrp_EncodedTextLen) :: (("355",enc_opt encode_string msg.f_OrdListStatGrp_EncodedText) :: [])))))))))))) []
;;

let encode_IOIQualGrp ( msg ) =
    (@) (("104",enc_opt encode_IOIQualifier msg.f_IOIQualGrp_IOIQualifier) :: []) []
;;

let encode_NstdPtys2SubGrp ( msg ) =
    (@) (("760",enc_opt encode_string msg.f_NstdPtys2SubGrp_Nested2PartySubID) :: (("807",enc_opt encode_int msg.f_NstdPtys2SubGrp_Nested2PartySubIDType) :: [])) []
;;

let encode_ContraGrp ( msg ) =
    (@) (("375",enc_opt encode_string msg.f_ContraGrp_ContraBroker) :: (("337",enc_opt encode_string msg.f_ContraGrp_ContraTrader) :: (("437",enc_opt encode_float msg.f_ContraGrp_ContraTradeQty) :: (("438",enc_opt encode_UTCTimestamp msg.f_ContraGrp_ContraTradeTime) :: (("655",enc_opt encode_string msg.f_ContraGrp_ContraLegRefID) :: []))))) []
;;

let encode_ClrInstGrp ( msg ) =
    (@) (("577",enc_opt encode_ClearingInstruction msg.f_ClrInstGrp_ClearingInstruction) :: []) []
;;

let encode_TrdgSesGrp ( msg ) =
    (@) (("336",enc_opt encode_string msg.f_TrdgSesGrp_TradingSessionID) :: (("625",enc_opt encode_string msg.f_TrdgSesGrp_TradingSessionSubID) :: [])) []
;;

let encode_PositionAmountData ( msg ) =
    (@) (("707",enc_opt encode_PosAmtType msg.f_PositionAmountData_PosAmtType) :: (("708",enc_opt encode_float msg.f_PositionAmountData_PosAmt) :: [])) []
;;

let encode_MiscFeesGrp ( msg ) =
    (@) (("137",enc_opt encode_float msg.f_MiscFeesGrp_MiscFeeAmt) :: (("138",enc_opt encode_Currency msg.f_MiscFeesGrp_MiscFeeCurr) :: (("139",enc_opt encode_MiscFeeType msg.f_MiscFeesGrp_MiscFeeType) :: (("891",enc_opt encode_MiscFeeBasis msg.f_MiscFeesGrp_MiscFeeBasis) :: [])))) []
;;

let encode_CollInqQualGrp ( msg ) =
    (@) (("896",enc_opt encode_CollInquiryQualifier msg.f_CollInqQualGrp_CollInquiryQualifier) :: []) []
;;

let encode_SecAltIDGrp ( msg ) =
    (@) (("455",enc_opt encode_string msg.f_SecAltIDGrp_SecurityAltID) :: (("456",enc_opt encode_string msg.f_SecAltIDGrp_SecurityAltIDSource) :: [])) []
;;

let encode_SpreadOrBenchmarkCurveData ( msg ) =
    (@) (("218",enc_opt encode_float msg.f_SpreadOrBenchmarkCurveData_Spread) :: (("220",enc_opt encode_Currency msg.f_SpreadOrBenchmarkCurveData_BenchmarkCurveCurrency) :: (("221",enc_opt encode_string msg.f_SpreadOrBenchmarkCurveData_BenchmarkCurveName) :: (("222",enc_opt encode_string msg.f_SpreadOrBenchmarkCurveData_BenchmarkCurvePoint) :: (("662",enc_opt encode_float msg.f_SpreadOrBenchmarkCurveData_BenchmarkPrice) :: (("663",enc_opt encode_int msg.f_SpreadOrBenchmarkCurveData_BenchmarkPriceType) :: (("699",enc_opt encode_string msg.f_SpreadOrBenchmarkCurveData_BenchmarkSecurityID) :: (("761",enc_opt encode_string msg.f_SpreadOrBenchmarkCurveData_BenchmarkSecurityIDSource) :: [])))))))) []
;;

let encode_NestedParties2 ( msg ) =
    (@) (("757",enc_opt encode_string msg.f_NestedParties2_Nested2PartyID) :: (("758",enc_opt encode_char msg.f_NestedParties2_Nested2PartyIDSource) :: (("759",enc_opt encode_int msg.f_NestedParties2_Nested2PartyRole) :: []))) ((@) (enc_repeat encode_NstdPtys2SubGrp "806" msg.f_NestedParties2_NstdPtys2SubGrp) [])
;;

let encode_InstrumentLeg ( msg ) =
    (@) (("600",enc_opt encode_string msg.f_InstrumentLeg_LegSymbol) :: (("601",enc_opt encode_string msg.f_InstrumentLeg_LegSymbolSfx) :: (("602",enc_opt encode_string msg.f_InstrumentLeg_LegSecurityID) :: (("603",enc_opt encode_string msg.f_InstrumentLeg_LegSecurityIDSource) :: (("607",enc_opt encode_int msg.f_InstrumentLeg_LegProduct) :: (("608",enc_opt encode_string msg.f_InstrumentLeg_LegCFICode) :: (("609",enc_opt encode_string msg.f_InstrumentLeg_LegSecurityType) :: (("764",enc_opt encode_string msg.f_InstrumentLeg_LegSecuritySubType) :: (("610",enc_opt encode_MonthYear msg.f_InstrumentLeg_LegMaturityMonthYear) :: (("611",enc_opt encode_LocalMktDate msg.f_InstrumentLeg_LegMaturityDate) :: (("248",enc_opt encode_LocalMktDate msg.f_InstrumentLeg_LegCouponPaymentDate) :: (("249",enc_opt encode_LocalMktDate msg.f_InstrumentLeg_LegIssueDate) :: (("250",enc_opt encode_string msg.f_InstrumentLeg_LegRepoCollateralSecurityType) :: (("251",enc_opt encode_int msg.f_InstrumentLeg_LegRepurchaseTerm) :: (("252",enc_opt encode_float msg.f_InstrumentLeg_LegRepurchaseRate) :: (("253",enc_opt encode_float msg.f_InstrumentLeg_LegFactor) :: (("257",enc_opt encode_string msg.f_InstrumentLeg_LegCreditRating) :: (("599",enc_opt encode_string msg.f_InstrumentLeg_LegInstrRegistry) :: (("596",enc_opt encode_Country msg.f_InstrumentLeg_LegCountryOfIssue) :: (("597",enc_opt encode_string msg.f_InstrumentLeg_LegStateOrProvinceOfIssue) :: (("598",enc_opt encode_string msg.f_InstrumentLeg_LegLocaleOfIssue) :: (("254",enc_opt encode_LocalMktDate msg.f_InstrumentLeg_LegRedemptionDate) :: (("612",enc_opt encode_float msg.f_InstrumentLeg_LegStrikePrice) :: (("942",enc_opt encode_Currency msg.f_InstrumentLeg_LegStrikeCurrency) :: (("613",enc_opt encode_char msg.f_InstrumentLeg_LegOptAttribute) :: (("614",enc_opt encode_float msg.f_InstrumentLeg_LegContractMultiplier) :: (("615",enc_opt encode_float msg.f_InstrumentLeg_LegCouponRate) :: (("616",enc_opt encode_Exchange msg.f_InstrumentLeg_LegSecurityExchange) :: (("617",enc_opt encode_string msg.f_InstrumentLeg_LegIssuer) :: (("618",enc_opt encode_int msg.f_InstrumentLeg_EncodedLegIssuerLen) :: (("619",enc_opt encode_string msg.f_InstrumentLeg_EncodedLegIssuer) :: (("620",enc_opt encode_string msg.f_InstrumentLeg_LegSecurityDesc) :: (("621",enc_opt encode_int msg.f_InstrumentLeg_EncodedLegSecurityDescLen) :: (("622",enc_opt encode_string msg.f_InstrumentLeg_EncodedLegSecurityDesc) :: (("623",enc_opt encode_float msg.f_InstrumentLeg_LegRatioQty) :: (("624",enc_opt encode_char msg.f_InstrumentLeg_LegSide) :: (("556",enc_opt encode_Currency msg.f_InstrumentLeg_LegCurrency) :: (("740",enc_opt encode_string msg.f_InstrumentLeg_LegPool) :: (("739",enc_opt encode_LocalMktDate msg.f_InstrumentLeg_LegDatedDate) :: (("955",enc_opt encode_MonthYear msg.f_InstrumentLeg_LegContractSettlMonth) :: (("956",enc_opt encode_LocalMktDate msg.f_InstrumentLeg_LegInterestAccrualDate) :: []))))))))))))))))))))))))))))))))))))))))) ((@) (enc_repeat encode_LegSecAltIDGrp "604" msg.f_InstrumentLeg_LegSecAltIDGrp) [])
;;

let encode_UnderlyingInstrument ( msg ) =
    (@) (("311",enc_opt encode_string msg.f_UnderlyingInstrument_UnderlyingSymbol) :: (("312",enc_opt encode_string msg.f_UnderlyingInstrument_UnderlyingSymbolSfx) :: (("309",enc_opt encode_string msg.f_UnderlyingInstrument_UnderlyingSecurityID) :: (("305",enc_opt encode_string msg.f_UnderlyingInstrument_UnderlyingSecurityIDSource) :: (("462",enc_opt encode_int msg.f_UnderlyingInstrument_UnderlyingProduct) :: (("463",enc_opt encode_string msg.f_UnderlyingInstrument_UnderlyingCFICode) :: (("310",enc_opt encode_string msg.f_UnderlyingInstrument_UnderlyingSecurityType) :: (("763",enc_opt encode_string msg.f_UnderlyingInstrument_UnderlyingSecuritySubType) :: (("313",enc_opt encode_MonthYear msg.f_UnderlyingInstrument_UnderlyingMaturityMonthYear) :: (("542",enc_opt encode_LocalMktDate msg.f_UnderlyingInstrument_UnderlyingMaturityDate) :: (("241",enc_opt encode_LocalMktDate msg.f_UnderlyingInstrument_UnderlyingCouponPaymentDate) :: (("242",enc_opt encode_LocalMktDate msg.f_UnderlyingInstrument_UnderlyingIssueDate) :: (("243",enc_opt encode_string msg.f_UnderlyingInstrument_UnderlyingRepoCollateralSecurityType) :: (("244",enc_opt encode_int msg.f_UnderlyingInstrument_UnderlyingRepurchaseTerm) :: (("245",enc_opt encode_float msg.f_UnderlyingInstrument_UnderlyingRepurchaseRate) :: (("246",enc_opt encode_float msg.f_UnderlyingInstrument_UnderlyingFactor) :: (("256",enc_opt encode_string msg.f_UnderlyingInstrument_UnderlyingCreditRating) :: (("595",enc_opt encode_string msg.f_UnderlyingInstrument_UnderlyingInstrRegistry) :: (("592",enc_opt encode_Country msg.f_UnderlyingInstrument_UnderlyingCountryOfIssue) :: (("593",enc_opt encode_string msg.f_UnderlyingInstrument_UnderlyingStateOrProvinceOfIssue) :: (("594",enc_opt encode_string msg.f_UnderlyingInstrument_UnderlyingLocaleOfIssue) :: (("247",enc_opt encode_LocalMktDate msg.f_UnderlyingInstrument_UnderlyingRedemptionDate) :: (("316",enc_opt encode_float msg.f_UnderlyingInstrument_UnderlyingStrikePrice) :: (("941",enc_opt encode_Currency msg.f_UnderlyingInstrument_UnderlyingStrikeCurrency) :: (("317",enc_opt encode_char msg.f_UnderlyingInstrument_UnderlyingOptAttribute) :: (("436",enc_opt encode_float msg.f_UnderlyingInstrument_UnderlyingContractMultiplier) :: (("435",enc_opt encode_float msg.f_UnderlyingInstrument_UnderlyingCouponRate) :: (("308",enc_opt encode_Exchange msg.f_UnderlyingInstrument_UnderlyingSecurityExchange) :: (("306",enc_opt encode_string msg.f_UnderlyingInstrument_UnderlyingIssuer) :: (("362",enc_opt encode_int msg.f_UnderlyingInstrument_EncodedUnderlyingIssuerLen) :: (("363",enc_opt encode_string msg.f_UnderlyingInstrument_EncodedUnderlyingIssuer) :: (("307",enc_opt encode_string msg.f_UnderlyingInstrument_UnderlyingSecurityDesc) :: (("364",enc_opt encode_int msg.f_UnderlyingInstrument_EncodedUnderlyingSecurityDescLen) :: (("365",enc_opt encode_string msg.f_UnderlyingInstrument_EncodedUnderlyingSecurityDesc) :: (("877",enc_opt encode_string msg.f_UnderlyingInstrument_UnderlyingCPProgram) :: (("878",enc_opt encode_string msg.f_UnderlyingInstrument_UnderlyingCPRegType) :: (("318",enc_opt encode_Currency msg.f_UnderlyingInstrument_UnderlyingCurrency) :: (("879",enc_opt encode_float msg.f_UnderlyingInstrument_UnderlyingQty) :: (("810",enc_opt encode_float msg.f_UnderlyingInstrument_UnderlyingPx) :: (("882",enc_opt encode_float msg.f_UnderlyingInstrument_UnderlyingDirtyPrice) :: (("883",enc_opt encode_float msg.f_UnderlyingInstrument_UnderlyingEndPrice) :: (("884",enc_opt encode_float msg.f_UnderlyingInstrument_UnderlyingStartValue) :: (("885",enc_opt encode_float msg.f_UnderlyingInstrument_UnderlyingCurrentValue) :: (("886",enc_opt encode_float msg.f_UnderlyingInstrument_UnderlyingEndValue) :: [])))))))))))))))))))))))))))))))))))))))))))) ((@) (enc_repeat encode_UnderlyingStipulations "887" msg.f_UnderlyingInstrument_UnderlyingStipulations) ((@) (enc_repeat encode_UndSecAltIDGrp "457" msg.f_UnderlyingInstrument_UndSecAltIDGrp) []))
;;

let encode_InstrumentExtension ( msg ) =
    (@) (("668",enc_opt encode_DeliveryForm msg.f_InstrumentExtension_DeliveryForm) :: (("869",enc_opt encode_float msg.f_InstrumentExtension_PctAtRisk) :: [])) ((@) (enc_repeat encode_AttrbGrp "870" msg.f_InstrumentExtension_AttrbGrp) [])
;;

let encode_NestedParties3 ( msg ) =
    (@) (("949",enc_opt encode_string msg.f_NestedParties3_Nested3PartyID) :: (("950",enc_opt encode_char msg.f_NestedParties3_Nested3PartyIDSource) :: (("951",enc_opt encode_int msg.f_NestedParties3_Nested3PartyRole) :: []))) ((@) (enc_repeat encode_NstdPtys3SubGrp "952" msg.f_NestedParties3_NstdPtys3SubGrp) [])
;;

let encode_SettlParties ( msg ) =
    (@) (("782",enc_opt encode_string msg.f_SettlParties_SettlPartyID) :: (("783",enc_opt encode_char msg.f_SettlParties_SettlPartyIDSource) :: (("784",enc_opt encode_int msg.f_SettlParties_SettlPartyRole) :: []))) ((@) (enc_repeat encode_SettlPtysSubGrp "801" msg.f_SettlParties_SettlPtysSubGrp) [])
;;

let encode_NestedParties ( msg ) =
    (@) (("524",enc_opt encode_string msg.f_NestedParties_NestedPartyID) :: (("525",enc_opt encode_char msg.f_NestedParties_NestedPartyIDSource) :: (("538",enc_opt encode_int msg.f_NestedParties_NestedPartyRole) :: []))) ((@) (enc_repeat encode_NstdPtysSubGrp "804" msg.f_NestedParties_NstdPtysSubGrp) [])
;;

let encode_BidCompRspGrp ( msg ) =
    (@) (encode_CommissionData msg.f_BidCompRspGrp_CommissionData) ((@) (("66",enc_opt encode_string msg.f_BidCompRspGrp_ListID) :: (("421",enc_opt encode_Country msg.f_BidCompRspGrp_Country) :: (("54",enc_opt encode_Side msg.f_BidCompRspGrp_Side) :: (("44",enc_opt encode_float msg.f_BidCompRspGrp_Price) :: (("423",enc_opt encode_PriceType msg.f_BidCompRspGrp_PriceType) :: (("406",enc_opt encode_float msg.f_BidCompRspGrp_FairValue) :: (("430",enc_opt encode_NetGrossInd msg.f_BidCompRspGrp_NetGrossInd) :: (("63",enc_opt encode_SettlType msg.f_BidCompRspGrp_SettlType) :: (("64",enc_opt encode_LocalMktDate msg.f_BidCompRspGrp_SettlDate) :: (("336",enc_opt encode_string msg.f_BidCompRspGrp_TradingSessionID) :: (("625",enc_opt encode_string msg.f_BidCompRspGrp_TradingSessionSubID) :: (("58",enc_opt encode_string msg.f_BidCompRspGrp_Text) :: (("354",enc_opt encode_int msg.f_BidCompRspGrp_EncodedTextLen) :: (("355",enc_opt encode_string msg.f_BidCompRspGrp_EncodedText) :: [])))))))))))))) [])
;;

let encode_Instrument ( msg ) =
    (@) (("55",enc_opt encode_string msg.f_Instrument_Symbol) :: (("65",enc_opt encode_string msg.f_Instrument_SymbolSfx) :: (("48",enc_opt encode_string msg.f_Instrument_SecurityID) :: (("22",enc_opt encode_SecurityIDSource msg.f_Instrument_SecurityIDSource) :: (("460",enc_opt encode_Product msg.f_Instrument_Product) :: (("461",enc_opt encode_string msg.f_Instrument_CFICode) :: (("167",enc_opt encode_SecurityType msg.f_Instrument_SecurityType) :: (("762",enc_opt encode_string msg.f_Instrument_SecuritySubType) :: (("200",enc_opt encode_MonthYear msg.f_Instrument_MaturityMonthYear) :: (("541",enc_opt encode_LocalMktDate msg.f_Instrument_MaturityDate) :: (("224",enc_opt encode_LocalMktDate msg.f_Instrument_CouponPaymentDate) :: (("225",enc_opt encode_LocalMktDate msg.f_Instrument_IssueDate) :: (("239",enc_opt encode_string msg.f_Instrument_RepoCollateralSecurityType) :: (("226",enc_opt encode_int msg.f_Instrument_RepurchaseTerm) :: (("227",enc_opt encode_float msg.f_Instrument_RepurchaseRate) :: (("228",enc_opt encode_float msg.f_Instrument_Factor) :: (("255",enc_opt encode_string msg.f_Instrument_CreditRating) :: (("543",enc_opt encode_string msg.f_Instrument_InstrRegistry) :: (("470",enc_opt encode_Country msg.f_Instrument_CountryOfIssue) :: (("471",enc_opt encode_string msg.f_Instrument_StateOrProvinceOfIssue) :: (("472",enc_opt encode_string msg.f_Instrument_LocaleOfIssue) :: (("240",enc_opt encode_LocalMktDate msg.f_Instrument_RedemptionDate) :: (("202",enc_opt encode_float msg.f_Instrument_StrikePrice) :: (("947",enc_opt encode_Currency msg.f_Instrument_StrikeCurrency) :: (("206",enc_opt encode_char msg.f_Instrument_OptAttribute) :: (("231",enc_opt encode_float msg.f_Instrument_ContractMultiplier) :: (("223",enc_opt encode_float msg.f_Instrument_CouponRate) :: (("207",enc_opt encode_Exchange msg.f_Instrument_SecurityExchange) :: (("106",enc_opt encode_string msg.f_Instrument_Issuer) :: (("348",enc_opt encode_int msg.f_Instrument_EncodedIssuerLen) :: (("349",enc_opt encode_string msg.f_Instrument_EncodedIssuer) :: (("107",enc_opt encode_string msg.f_Instrument_SecurityDesc) :: (("350",enc_opt encode_int msg.f_Instrument_EncodedSecurityDescLen) :: (("351",enc_opt encode_string msg.f_Instrument_EncodedSecurityDesc) :: (("691",enc_opt encode_string msg.f_Instrument_Pool) :: (("667",enc_opt encode_MonthYear msg.f_Instrument_ContractSettlMonth) :: (("875",enc_opt encode_CPProgram msg.f_Instrument_CPProgram) :: (("876",enc_opt encode_string msg.f_Instrument_CPRegType) :: (("873",enc_opt encode_LocalMktDate msg.f_Instrument_DatedDate) :: (("874",enc_opt encode_LocalMktDate msg.f_Instrument_InterestAccrualDate) :: [])))))))))))))))))))))))))))))))))))))))) ((@) (enc_repeat encode_EvntGrp "864" msg.f_Instrument_EvntGrp) ((@) (enc_repeat encode_SecAltIDGrp "454" msg.f_Instrument_SecAltIDGrp) []))
;;

let encode_Parties ( msg ) =
    (@) (("448",enc_opt encode_string msg.f_Parties_PartyID) :: (("447",enc_opt encode_PartyIDSource msg.f_Parties_PartyIDSource) :: (("452",enc_opt encode_PartyRole msg.f_Parties_PartyRole) :: []))) ((@) (enc_repeat encode_PtysSubGrp "802" msg.f_Parties_PtysSubGrp) [])
;;

let encode_SideCrossOrdCxlGrp ( msg ) =
    (@) (encode_OrderQtyData msg.f_SideCrossOrdCxlGrp_OrderQtyData) ((@) (("54",enc_opt encode_Side msg.f_SideCrossOrdCxlGrp_Side) :: (("41",enc_opt encode_string msg.f_SideCrossOrdCxlGrp_OrigClOrdID) :: (("11",enc_opt encode_string msg.f_SideCrossOrdCxlGrp_ClOrdID) :: (("526",enc_opt encode_string msg.f_SideCrossOrdCxlGrp_SecondaryClOrdID) :: (("583",enc_opt encode_string msg.f_SideCrossOrdCxlGrp_ClOrdLinkID) :: (("586",enc_opt encode_UTCTimestamp msg.f_SideCrossOrdCxlGrp_OrigOrdModTime) :: (("229",enc_opt encode_LocalMktDate msg.f_SideCrossOrdCxlGrp_TradeOriginationDate) :: (("75",enc_opt encode_LocalMktDate msg.f_SideCrossOrdCxlGrp_TradeDate) :: (("376",enc_opt encode_string msg.f_SideCrossOrdCxlGrp_ComplianceID) :: (("58",enc_opt encode_string msg.f_SideCrossOrdCxlGrp_Text) :: (("354",enc_opt encode_int msg.f_SideCrossOrdCxlGrp_EncodedTextLen) :: (("355",enc_opt encode_string msg.f_SideCrossOrdCxlGrp_EncodedText) :: [])))))))))))) ((@) (enc_repeat encode_Parties "453" msg.f_SideCrossOrdCxlGrp_Parties) []))
;;

let encode_InstrmtGrp ( msg ) =
    (@) (encode_Instrument msg.f_InstrmtGrp_Instrument) ((@) [] [])
;;

let encode_InstrmtStrkPxGrp ( msg ) =
    (@) (encode_Instrument msg.f_InstrmtStrkPxGrp_Instrument) ((@) [] [])
;;

let encode_RgstDtlsGrp ( msg ) =
    (@) (("509",enc_opt encode_string msg.f_RgstDtlsGrp_RegistDtls) :: (("511",enc_opt encode_string msg.f_RgstDtlsGrp_RegistEmail) :: (("474",enc_opt encode_string msg.f_RgstDtlsGrp_MailingDtls) :: (("482",enc_opt encode_string msg.f_RgstDtlsGrp_MailingInst) :: (("522",enc_opt encode_OwnerType msg.f_RgstDtlsGrp_OwnerType) :: (("486",enc_opt encode_LocalMktDate msg.f_RgstDtlsGrp_DateOfBirth) :: (("475",enc_opt encode_Country msg.f_RgstDtlsGrp_InvestorCountryOfResidence) :: []))))))) ((@) (enc_repeat encode_NestedParties "539" msg.f_RgstDtlsGrp_NestedParties) [])
;;

let encode_PreAllocGrp ( msg ) =
    (@) (("79",enc_opt encode_string msg.f_PreAllocGrp_AllocAccount) :: (("661",enc_opt encode_int msg.f_PreAllocGrp_AllocAcctIDSource) :: (("736",enc_opt encode_Currency msg.f_PreAllocGrp_AllocSettlCurrency) :: (("467",enc_opt encode_string msg.f_PreAllocGrp_IndividualAllocID) :: (("80",enc_opt encode_float msg.f_PreAllocGrp_AllocQty) :: []))))) ((@) (enc_repeat encode_NestedParties "539" msg.f_PreAllocGrp_NestedParties) [])
;;

let encode_PositionQty ( msg ) =
    (@) (("703",enc_opt encode_PosType msg.f_PositionQty_PosType) :: (("704",enc_opt encode_float msg.f_PositionQty_LongQty) :: (("705",enc_opt encode_float msg.f_PositionQty_ShortQty) :: (("706",enc_opt encode_PosQtyStatus msg.f_PositionQty_PosQtyStatus) :: [])))) ((@) (enc_repeat encode_NestedParties "539" msg.f_PositionQty_NestedParties) [])
;;

let encode_DlvyInstGrp ( msg ) =
    (@) (("165",enc_opt encode_SettlInstSource msg.f_DlvyInstGrp_SettlInstSource) :: (("787",enc_opt encode_DlvyInstType msg.f_DlvyInstGrp_DlvyInstType) :: [])) ((@) (enc_repeat encode_SettlParties "781" msg.f_DlvyInstGrp_SettlParties) [])
;;

let encode_PreAllocMlegGrp ( msg ) =
    (@) (("79",enc_opt encode_string msg.f_PreAllocMlegGrp_AllocAccount) :: (("661",enc_opt encode_int msg.f_PreAllocMlegGrp_AllocAcctIDSource) :: (("736",enc_opt encode_Currency msg.f_PreAllocMlegGrp_AllocSettlCurrency) :: (("467",enc_opt encode_string msg.f_PreAllocMlegGrp_IndividualAllocID) :: (("80",enc_opt encode_float msg.f_PreAllocMlegGrp_AllocQty) :: []))))) ((@) (enc_repeat encode_NestedParties3 "948" msg.f_PreAllocMlegGrp_NestedParties3) [])
;;

let encode_UndInstrmtGrp ( msg ) =
    (@) (encode_UnderlyingInstrument msg.f_UndInstrmtGrp_UnderlyingInstrument) ((@) [] [])
;;

let encode_PosUndInstrmtGrp ( msg ) =
    (@) (encode_UnderlyingInstrument msg.f_PosUndInstrmtGrp_UnderlyingInstrument) ((@) (("732",enc_opt encode_float msg.f_PosUndInstrmtGrp_UnderlyingSettlPrice) :: (("733",enc_opt encode_int msg.f_PosUndInstrmtGrp_UnderlyingSettlPriceType) :: [])) [])
;;

let encode_UndInstrmtCollGrp ( msg ) =
    (@) (encode_UnderlyingInstrument msg.f_UndInstrmtCollGrp_UnderlyingInstrument) ((@) (("944",enc_opt encode_CollAction msg.f_UndInstrmtCollGrp_CollAction) :: []) [])
;;

let encode_UndInstrmtStrkPxGrp ( msg ) =
    (@) (encode_UnderlyingInstrument msg.f_UndInstrmtStrkPxGrp_UnderlyingInstrument) ((@) (("140",enc_opt encode_float msg.f_UndInstrmtStrkPxGrp_PrevClosePx) :: (("11",enc_opt encode_string msg.f_UndInstrmtStrkPxGrp_ClOrdID) :: (("526",enc_opt encode_string msg.f_UndInstrmtStrkPxGrp_SecondaryClOrdID) :: (("54",enc_opt encode_Side msg.f_UndInstrmtStrkPxGrp_Side) :: (("44",enc_opt encode_float msg.f_UndInstrmtStrkPxGrp_Price) :: (("15",enc_opt encode_Currency msg.f_UndInstrmtStrkPxGrp_Currency) :: (("58",enc_opt encode_string msg.f_UndInstrmtStrkPxGrp_Text) :: (("354",enc_opt encode_int msg.f_UndInstrmtStrkPxGrp_EncodedTextLen) :: (("355",enc_opt encode_string msg.f_UndInstrmtStrkPxGrp_EncodedText) :: []))))))))) [])
;;

let encode_InstrmtLegSecListGrp ( msg ) =
    (@) (encode_LegBenchmarkCurveData msg.f_InstrmtLegSecListGrp_LegBenchmarkCurveData) ((@) (encode_InstrumentLeg msg.f_InstrmtLegSecListGrp_InstrumentLeg) ((@) (("690",enc_opt encode_LegSwapType msg.f_InstrmtLegSecListGrp_LegSwapType) :: (("587",enc_opt encode_char msg.f_InstrmtLegSecListGrp_LegSettlType) :: [])) ((@) (enc_repeat encode_LegStipulations "683" msg.f_InstrmtLegSecListGrp_LegStipulations) [])))
;;

let encode_InstrmtLegGrp ( msg ) =
    (@) (encode_InstrumentLeg msg.f_InstrmtLegGrp_InstrumentLeg) ((@) [] [])
;;

let encode_InstrmtLegExecGrp ( msg ) =
    (@) (encode_InstrumentLeg msg.f_InstrmtLegExecGrp_InstrumentLeg) ((@) (("687",enc_opt encode_float msg.f_InstrmtLegExecGrp_LegQty) :: (("690",enc_opt encode_LegSwapType msg.f_InstrmtLegExecGrp_LegSwapType) :: (("564",enc_opt encode_char msg.f_InstrmtLegExecGrp_LegPositionEffect) :: (("565",enc_opt encode_int msg.f_InstrmtLegExecGrp_LegCoveredOrUncovered) :: (("654",enc_opt encode_string msg.f_InstrmtLegExecGrp_LegRefID) :: (("566",enc_opt encode_float msg.f_InstrmtLegExecGrp_LegPrice) :: (("587",enc_opt encode_char msg.f_InstrmtLegExecGrp_LegSettlType) :: (("588",enc_opt encode_LocalMktDate msg.f_InstrmtLegExecGrp_LegSettlDate) :: (("637",enc_opt encode_float msg.f_InstrmtLegExecGrp_LegLastPx) :: []))))))))) ((@) (enc_repeat encode_NestedParties "539" msg.f_InstrmtLegExecGrp_NestedParties) ((@) (enc_repeat encode_LegStipulations "683" msg.f_InstrmtLegExecGrp_LegStipulations) [])))
;;

let encode_InstrmtLegIOIGrp ( msg ) =
    (@) (encode_InstrumentLeg msg.f_InstrmtLegIOIGrp_InstrumentLeg) ((@) (("682",enc_opt encode_string msg.f_InstrmtLegIOIGrp_LegIOIQty) :: []) ((@) (enc_repeat encode_LegStipulations "683" msg.f_InstrmtLegIOIGrp_LegStipulations) []))
;;

let encode_QuotReqLegsGrp ( msg ) =
    (@) (encode_LegBenchmarkCurveData msg.f_QuotReqLegsGrp_LegBenchmarkCurveData) ((@) (encode_InstrumentLeg msg.f_QuotReqLegsGrp_InstrumentLeg) ((@) (("687",enc_opt encode_float msg.f_QuotReqLegsGrp_LegQty) :: (("690",enc_opt encode_LegSwapType msg.f_QuotReqLegsGrp_LegSwapType) :: (("587",enc_opt encode_char msg.f_QuotReqLegsGrp_LegSettlType) :: (("588",enc_opt encode_LocalMktDate msg.f_QuotReqLegsGrp_LegSettlDate) :: [])))) ((@) (enc_repeat encode_NestedParties "539" msg.f_QuotReqLegsGrp_NestedParties) ((@) (enc_repeat encode_LegStipulations "683" msg.f_QuotReqLegsGrp_LegStipulations) []))))
;;

let encode_LegQuotGrp ( msg ) =
    (@) (encode_LegBenchmarkCurveData msg.f_LegQuotGrp_LegBenchmarkCurveData) ((@) (encode_InstrumentLeg msg.f_LegQuotGrp_InstrumentLeg) ((@) (("687",enc_opt encode_float msg.f_LegQuotGrp_LegQty) :: (("690",enc_opt encode_LegSwapType msg.f_LegQuotGrp_LegSwapType) :: (("587",enc_opt encode_char msg.f_LegQuotGrp_LegSettlType) :: (("588",enc_opt encode_LocalMktDate msg.f_LegQuotGrp_LegSettlDate) :: (("686",enc_opt encode_int msg.f_LegQuotGrp_LegPriceType) :: (("681",enc_opt encode_float msg.f_LegQuotGrp_LegBidPx) :: (("684",enc_opt encode_float msg.f_LegQuotGrp_LegOfferPx) :: []))))))) ((@) (enc_repeat encode_NestedParties "539" msg.f_LegQuotGrp_NestedParties) ((@) (enc_repeat encode_LegStipulations "683" msg.f_LegQuotGrp_LegStipulations) []))))
;;

let encode_LegQuotStatGrp ( msg ) =
    (@) (encode_InstrumentLeg msg.f_LegQuotStatGrp_InstrumentLeg) ((@) (("687",enc_opt encode_float msg.f_LegQuotStatGrp_LegQty) :: (("690",enc_opt encode_LegSwapType msg.f_LegQuotStatGrp_LegSwapType) :: (("587",enc_opt encode_char msg.f_LegQuotStatGrp_LegSettlType) :: (("588",enc_opt encode_LocalMktDate msg.f_LegQuotStatGrp_LegSettlDate) :: [])))) ((@) (enc_repeat encode_NestedParties "539" msg.f_LegQuotStatGrp_NestedParties) ((@) (enc_repeat encode_LegStipulations "683" msg.f_LegQuotStatGrp_LegStipulations) [])))
;;

let encode_TrdInstrmtLegGrp ( msg ) =
    (@) (encode_InstrumentLeg msg.f_TrdInstrmtLegGrp_InstrumentLeg) ((@) (("687",enc_opt encode_float msg.f_TrdInstrmtLegGrp_LegQty) :: (("690",enc_opt encode_LegSwapType msg.f_TrdInstrmtLegGrp_LegSwapType) :: (("564",enc_opt encode_char msg.f_TrdInstrmtLegGrp_LegPositionEffect) :: (("565",enc_opt encode_int msg.f_TrdInstrmtLegGrp_LegCoveredOrUncovered) :: (("654",enc_opt encode_string msg.f_TrdInstrmtLegGrp_LegRefID) :: (("566",enc_opt encode_float msg.f_TrdInstrmtLegGrp_LegPrice) :: (("587",enc_opt encode_char msg.f_TrdInstrmtLegGrp_LegSettlType) :: (("588",enc_opt encode_LocalMktDate msg.f_TrdInstrmtLegGrp_LegSettlDate) :: (("637",enc_opt encode_float msg.f_TrdInstrmtLegGrp_LegLastPx) :: []))))))))) ((@) (enc_repeat encode_NestedParties "539" msg.f_TrdInstrmtLegGrp_NestedParties) ((@) (enc_repeat encode_LegStipulations "683" msg.f_TrdInstrmtLegGrp_LegStipulations) [])))
;;

let encode_TrdAllocGrp ( msg ) =
    (@) (("79",enc_opt encode_string msg.f_TrdAllocGrp_AllocAccount) :: (("661",enc_opt encode_int msg.f_TrdAllocGrp_AllocAcctIDSource) :: (("736",enc_opt encode_Currency msg.f_TrdAllocGrp_AllocSettlCurrency) :: (("467",enc_opt encode_string msg.f_TrdAllocGrp_IndividualAllocID) :: (("80",enc_opt encode_float msg.f_TrdAllocGrp_AllocQty) :: []))))) ((@) (enc_repeat encode_NestedParties2 "756" msg.f_TrdAllocGrp_NestedParties2) [])
;;

let encode_OrdAllocGrp ( msg ) =
    (@) (("11",enc_opt encode_string msg.f_OrdAllocGrp_ClOrdID) :: (("37",enc_opt encode_string msg.f_OrdAllocGrp_OrderID) :: (("198",enc_opt encode_string msg.f_OrdAllocGrp_SecondaryOrderID) :: (("526",enc_opt encode_string msg.f_OrdAllocGrp_SecondaryClOrdID) :: (("66",enc_opt encode_string msg.f_OrdAllocGrp_ListID) :: (("38",enc_opt encode_float msg.f_OrdAllocGrp_OrderQty) :: (("799",enc_opt encode_float msg.f_OrdAllocGrp_OrderAvgPx) :: (("800",enc_opt encode_float msg.f_OrdAllocGrp_OrderBookingQty) :: [])))))))) ((@) (enc_repeat encode_NestedParties2 "756" msg.f_OrdAllocGrp_NestedParties2) [])
;;

let encode_LegPreAllocGrp ( msg ) =
    (@) (("671",enc_opt encode_string msg.f_LegPreAllocGrp_LegAllocAccount) :: (("672",enc_opt encode_string msg.f_LegPreAllocGrp_LegIndividualAllocID) :: (("673",enc_opt encode_float msg.f_LegPreAllocGrp_LegAllocQty) :: (("674",enc_opt encode_string msg.f_LegPreAllocGrp_LegAllocAcctIDSource) :: (("675",enc_opt encode_Currency msg.f_LegPreAllocGrp_LegSettlCurrency) :: []))))) ((@) (enc_repeat encode_NestedParties2 "756" msg.f_LegPreAllocGrp_NestedParties2) [])
;;

let encode_LegOrdGrp ( msg ) =
    (@) (encode_InstrumentLeg msg.f_LegOrdGrp_InstrumentLeg) ((@) (("687",enc_opt encode_float msg.f_LegOrdGrp_LegQty) :: (("690",enc_opt encode_LegSwapType msg.f_LegOrdGrp_LegSwapType) :: (("564",enc_opt encode_char msg.f_LegOrdGrp_LegPositionEffect) :: (("565",enc_opt encode_int msg.f_LegOrdGrp_LegCoveredOrUncovered) :: (("654",enc_opt encode_string msg.f_LegOrdGrp_LegRefID) :: (("566",enc_opt encode_float msg.f_LegOrdGrp_LegPrice) :: (("587",enc_opt encode_char msg.f_LegOrdGrp_LegSettlType) :: (("588",enc_opt encode_LocalMktDate msg.f_LegOrdGrp_LegSettlDate) :: [])))))))) ((@) (enc_repeat encode_NestedParties "539" msg.f_LegOrdGrp_NestedParties) ((@) (enc_repeat encode_LegPreAllocGrp "670" msg.f_LegOrdGrp_LegPreAllocGrp) ((@) (enc_repeat encode_LegStipulations "683" msg.f_LegOrdGrp_LegStipulations) []))))
;;

let encode_TrdCapRptSideGrp ( msg ) =
    (@) (encode_CommissionData msg.f_TrdCapRptSideGrp_CommissionData) ((@) (("54",enc_opt encode_Side msg.f_TrdCapRptSideGrp_Side) :: (("37",enc_opt encode_string msg.f_TrdCapRptSideGrp_OrderID) :: (("198",enc_opt encode_string msg.f_TrdCapRptSideGrp_SecondaryOrderID) :: (("11",enc_opt encode_string msg.f_TrdCapRptSideGrp_ClOrdID) :: (("526",enc_opt encode_string msg.f_TrdCapRptSideGrp_SecondaryClOrdID) :: (("66",enc_opt encode_string msg.f_TrdCapRptSideGrp_ListID) :: (("1",enc_opt encode_string msg.f_TrdCapRptSideGrp_Account) :: (("660",enc_opt encode_AcctIDSource msg.f_TrdCapRptSideGrp_AcctIDSource) :: (("581",enc_opt encode_AccountType msg.f_TrdCapRptSideGrp_AccountType) :: (("81",enc_opt encode_ProcessCode msg.f_TrdCapRptSideGrp_ProcessCode) :: (("575",enc_opt encode_OddLot msg.f_TrdCapRptSideGrp_OddLot) :: (("578",enc_opt encode_string msg.f_TrdCapRptSideGrp_TradeInputSource) :: (("579",enc_opt encode_string msg.f_TrdCapRptSideGrp_TradeInputDevice) :: (("821",enc_opt encode_string msg.f_TrdCapRptSideGrp_OrderInputDevice) :: (("15",enc_opt encode_Currency msg.f_TrdCapRptSideGrp_Currency) :: (("376",enc_opt encode_string msg.f_TrdCapRptSideGrp_ComplianceID) :: (("377",enc_opt encode_SolicitedFlag msg.f_TrdCapRptSideGrp_SolicitedFlag) :: (("528",enc_opt encode_OrderCapacity msg.f_TrdCapRptSideGrp_OrderCapacity) :: (("529",enc_opt encode_OrderRestrictions msg.f_TrdCapRptSideGrp_OrderRestrictions) :: (("582",enc_opt encode_CustOrderCapacity msg.f_TrdCapRptSideGrp_CustOrderCapacity) :: (("40",enc_opt encode_OrdType msg.f_TrdCapRptSideGrp_OrdType) :: (("18",enc_opt encode_ExecInst msg.f_TrdCapRptSideGrp_ExecInst) :: (("483",enc_opt encode_UTCTimestamp msg.f_TrdCapRptSideGrp_TransBkdTime) :: (("336",enc_opt encode_string msg.f_TrdCapRptSideGrp_TradingSessionID) :: (("625",enc_opt encode_string msg.f_TrdCapRptSideGrp_TradingSessionSubID) :: (("943",enc_opt encode_string msg.f_TrdCapRptSideGrp_TimeBracket) :: (("381",enc_opt encode_float msg.f_TrdCapRptSideGrp_GrossTradeAmt) :: (("157",enc_opt encode_int msg.f_TrdCapRptSideGrp_NumDaysInterest) :: (("230",enc_opt encode_LocalMktDate msg.f_TrdCapRptSideGrp_ExDate) :: (("158",enc_opt encode_float msg.f_TrdCapRptSideGrp_AccruedInterestRate) :: (("159",enc_opt encode_float msg.f_TrdCapRptSideGrp_AccruedInterestAmt) :: (("738",enc_opt encode_float msg.f_TrdCapRptSideGrp_InterestAtMaturity) :: (("920",enc_opt encode_float msg.f_TrdCapRptSideGrp_EndAccruedInterestAmt) :: (("921",enc_opt encode_float msg.f_TrdCapRptSideGrp_StartCash) :: (("922",enc_opt encode_float msg.f_TrdCapRptSideGrp_EndCash) :: (("238",enc_opt encode_float msg.f_TrdCapRptSideGrp_Concession) :: (("237",enc_opt encode_float msg.f_TrdCapRptSideGrp_TotalTakedown) :: (("118",enc_opt encode_float msg.f_TrdCapRptSideGrp_NetMoney) :: (("119",enc_opt encode_float msg.f_TrdCapRptSideGrp_SettlCurrAmt) :: (("120",enc_opt encode_Currency msg.f_TrdCapRptSideGrp_SettlCurrency) :: (("155",enc_opt encode_float msg.f_TrdCapRptSideGrp_SettlCurrFxRate) :: (("156",enc_opt encode_SettlCurrFxRateCalc msg.f_TrdCapRptSideGrp_SettlCurrFxRateCalc) :: (("77",enc_opt encode_PositionEffect msg.f_TrdCapRptSideGrp_PositionEffect) :: (("58",enc_opt encode_string msg.f_TrdCapRptSideGrp_Text) :: (("354",enc_opt encode_int msg.f_TrdCapRptSideGrp_EncodedTextLen) :: (("355",enc_opt encode_string msg.f_TrdCapRptSideGrp_EncodedText) :: (("752",enc_opt encode_SideMultiLegReportingType msg.f_TrdCapRptSideGrp_SideMultiLegReportingType) :: (("825",enc_opt encode_string msg.f_TrdCapRptSideGrp_ExchangeRule) :: (("826",enc_opt encode_TradeAllocIndicator msg.f_TrdCapRptSideGrp_TradeAllocIndicator) :: (("591",enc_opt encode_PreallocMethod msg.f_TrdCapRptSideGrp_PreallocMethod) :: (("70",enc_opt encode_string msg.f_TrdCapRptSideGrp_AllocID) :: []))))))))))))))))))))))))))))))))))))))))))))))))))) ((@) (enc_repeat encode_TrdAllocGrp "78" msg.f_TrdCapRptSideGrp_TrdAllocGrp) ((@) (enc_repeat encode_MiscFeesGrp "136" msg.f_TrdCapRptSideGrp_MiscFeesGrp) ((@) (enc_repeat encode_Stipulations "232" msg.f_TrdCapRptSideGrp_Stipulations) ((@) (enc_repeat encode_ContAmtGrp "518" msg.f_TrdCapRptSideGrp_ContAmtGrp) ((@) (enc_repeat encode_ClrInstGrp "576" msg.f_TrdCapRptSideGrp_ClrInstGrp) ((@) (enc_repeat encode_Parties "453" msg.f_TrdCapRptSideGrp_Parties) [])))))))
;;

let encode_RelSymDerivSecGrp ( msg ) =
    (@) (encode_InstrumentExtension msg.f_RelSymDerivSecGrp_InstrumentExtension) ((@) (encode_Instrument msg.f_RelSymDerivSecGrp_Instrument) ((@) (("15",enc_opt encode_Currency msg.f_RelSymDerivSecGrp_Currency) :: (("827",enc_opt encode_ExpirationCycle msg.f_RelSymDerivSecGrp_ExpirationCycle) :: (("336",enc_opt encode_string msg.f_RelSymDerivSecGrp_TradingSessionID) :: (("625",enc_opt encode_string msg.f_RelSymDerivSecGrp_TradingSessionSubID) :: (("58",enc_opt encode_string msg.f_RelSymDerivSecGrp_Text) :: (("354",enc_opt encode_int msg.f_RelSymDerivSecGrp_EncodedTextLen) :: (("355",enc_opt encode_string msg.f_RelSymDerivSecGrp_EncodedText) :: []))))))) ((@) (enc_repeat encode_InstrmtLegGrp "555" msg.f_RelSymDerivSecGrp_InstrmtLegGrp) [])))
;;

let encode_QuotEntryAckGrp ( msg ) =
    (@) (encode_Instrument msg.f_QuotEntryAckGrp_Instrument) ((@) (("299",enc_opt encode_string msg.f_QuotEntryAckGrp_QuoteEntryID) :: (("132",enc_opt encode_float msg.f_QuotEntryAckGrp_BidPx) :: (("133",enc_opt encode_float msg.f_QuotEntryAckGrp_OfferPx) :: (("134",enc_opt encode_float msg.f_QuotEntryAckGrp_BidSize) :: (("135",enc_opt encode_float msg.f_QuotEntryAckGrp_OfferSize) :: (("62",enc_opt encode_UTCTimestamp msg.f_QuotEntryAckGrp_ValidUntilTime) :: (("188",enc_opt encode_float msg.f_QuotEntryAckGrp_BidSpotRate) :: (("190",enc_opt encode_float msg.f_QuotEntryAckGrp_OfferSpotRate) :: (("189",enc_opt encode_float msg.f_QuotEntryAckGrp_BidForwardPoints) :: (("191",enc_opt encode_float msg.f_QuotEntryAckGrp_OfferForwardPoints) :: (("631",enc_opt encode_float msg.f_QuotEntryAckGrp_MidPx) :: (("632",enc_opt encode_float msg.f_QuotEntryAckGrp_BidYield) :: (("633",enc_opt encode_float msg.f_QuotEntryAckGrp_MidYield) :: (("634",enc_opt encode_float msg.f_QuotEntryAckGrp_OfferYield) :: (("60",enc_opt encode_UTCTimestamp msg.f_QuotEntryAckGrp_TransactTime) :: (("336",enc_opt encode_string msg.f_QuotEntryAckGrp_TradingSessionID) :: (("625",enc_opt encode_string msg.f_QuotEntryAckGrp_TradingSessionSubID) :: (("64",enc_opt encode_LocalMktDate msg.f_QuotEntryAckGrp_SettlDate) :: (("40",enc_opt encode_OrdType msg.f_QuotEntryAckGrp_OrdType) :: (("193",enc_opt encode_LocalMktDate msg.f_QuotEntryAckGrp_SettlDate2) :: (("192",enc_opt encode_float msg.f_QuotEntryAckGrp_OrderQty2) :: (("642",enc_opt encode_float msg.f_QuotEntryAckGrp_BidForwardPoints2) :: (("643",enc_opt encode_float msg.f_QuotEntryAckGrp_OfferForwardPoints2) :: (("15",enc_opt encode_Currency msg.f_QuotEntryAckGrp_Currency) :: (("368",enc_opt encode_int msg.f_QuotEntryAckGrp_QuoteEntryRejectReason) :: []))))))))))))))))))))))))) ((@) (enc_repeat encode_InstrmtLegGrp "555" msg.f_QuotEntryAckGrp_InstrmtLegGrp) []))
;;

let encode_QuotEntryGrp ( msg ) =
    (@) (encode_Instrument msg.f_QuotEntryGrp_Instrument) ((@) (("299",enc_opt encode_string msg.f_QuotEntryGrp_QuoteEntryID) :: (("132",enc_opt encode_float msg.f_QuotEntryGrp_BidPx) :: (("133",enc_opt encode_float msg.f_QuotEntryGrp_OfferPx) :: (("134",enc_opt encode_float msg.f_QuotEntryGrp_BidSize) :: (("135",enc_opt encode_float msg.f_QuotEntryGrp_OfferSize) :: (("62",enc_opt encode_UTCTimestamp msg.f_QuotEntryGrp_ValidUntilTime) :: (("188",enc_opt encode_float msg.f_QuotEntryGrp_BidSpotRate) :: (("190",enc_opt encode_float msg.f_QuotEntryGrp_OfferSpotRate) :: (("189",enc_opt encode_float msg.f_QuotEntryGrp_BidForwardPoints) :: (("191",enc_opt encode_float msg.f_QuotEntryGrp_OfferForwardPoints) :: (("631",enc_opt encode_float msg.f_QuotEntryGrp_MidPx) :: (("632",enc_opt encode_float msg.f_QuotEntryGrp_BidYield) :: (("633",enc_opt encode_float msg.f_QuotEntryGrp_MidYield) :: (("634",enc_opt encode_float msg.f_QuotEntryGrp_OfferYield) :: (("60",enc_opt encode_UTCTimestamp msg.f_QuotEntryGrp_TransactTime) :: (("336",enc_opt encode_string msg.f_QuotEntryGrp_TradingSessionID) :: (("625",enc_opt encode_string msg.f_QuotEntryGrp_TradingSessionSubID) :: (("64",enc_opt encode_LocalMktDate msg.f_QuotEntryGrp_SettlDate) :: (("40",enc_opt encode_OrdType msg.f_QuotEntryGrp_OrdType) :: (("193",enc_opt encode_LocalMktDate msg.f_QuotEntryGrp_SettlDate2) :: (("192",enc_opt encode_float msg.f_QuotEntryGrp_OrderQty2) :: (("642",enc_opt encode_float msg.f_QuotEntryGrp_BidForwardPoints2) :: (("643",enc_opt encode_float msg.f_QuotEntryGrp_OfferForwardPoints2) :: (("15",enc_opt encode_Currency msg.f_QuotEntryGrp_Currency) :: [])))))))))))))))))))))))) ((@) (enc_repeat encode_InstrmtLegGrp "555" msg.f_QuotEntryGrp_InstrmtLegGrp) []))
;;

let encode_InstrmtMDReqGrp ( msg ) =
    (@) (encode_Instrument msg.f_InstrmtMDReqGrp_Instrument) ((@) [] ((@) (enc_repeat encode_InstrmtLegGrp "555" msg.f_InstrmtMDReqGrp_InstrmtLegGrp) ((@) (enc_repeat encode_UndInstrmtGrp "711" msg.f_InstrmtMDReqGrp_UndInstrmtGrp) [])))
;;

let encode_RFQReqGrp ( msg ) =
    (@) (encode_Instrument msg.f_RFQReqGrp_Instrument) ((@) (("140",enc_opt encode_float msg.f_RFQReqGrp_PrevClosePx) :: (("303",enc_opt encode_QuoteRequestType msg.f_RFQReqGrp_QuoteRequestType) :: (("537",enc_opt encode_QuoteType msg.f_RFQReqGrp_QuoteType) :: (("336",enc_opt encode_string msg.f_RFQReqGrp_TradingSessionID) :: (("625",enc_opt encode_string msg.f_RFQReqGrp_TradingSessionSubID) :: []))))) ((@) (enc_repeat encode_InstrmtLegGrp "555" msg.f_RFQReqGrp_InstrmtLegGrp) ((@) (enc_repeat encode_UndInstrmtGrp "711" msg.f_RFQReqGrp_UndInstrmtGrp) [])))
;;

let encode_MDIncGrp ( msg ) =
    (@) (encode_Instrument msg.f_MDIncGrp_Instrument) ((@) (("279",enc_opt encode_MDUpdateAction msg.f_MDIncGrp_MDUpdateAction) :: (("285",enc_opt encode_DeleteReason msg.f_MDIncGrp_DeleteReason) :: (("269",enc_opt encode_MDEntryType msg.f_MDIncGrp_MDEntryType) :: (("278",enc_opt encode_string msg.f_MDIncGrp_MDEntryID) :: (("280",enc_opt encode_string msg.f_MDIncGrp_MDEntryRefID) :: (("291",enc_opt encode_FinancialStatus msg.f_MDIncGrp_FinancialStatus) :: (("292",enc_opt encode_CorporateAction msg.f_MDIncGrp_CorporateAction) :: (("270",enc_opt encode_float msg.f_MDIncGrp_MDEntryPx) :: (("15",enc_opt encode_Currency msg.f_MDIncGrp_Currency) :: (("271",enc_opt encode_float msg.f_MDIncGrp_MDEntrySize) :: (("272",enc_opt encode_UTCDateOnly msg.f_MDIncGrp_MDEntryDate) :: (("273",enc_opt encode_UTCTimeOnly msg.f_MDIncGrp_MDEntryTime) :: (("274",enc_opt encode_TickDirection msg.f_MDIncGrp_TickDirection) :: (("275",enc_opt encode_Exchange msg.f_MDIncGrp_MDMkt) :: (("336",enc_opt encode_string msg.f_MDIncGrp_TradingSessionID) :: (("625",enc_opt encode_string msg.f_MDIncGrp_TradingSessionSubID) :: (("276",enc_opt encode_QuoteCondition msg.f_MDIncGrp_QuoteCondition) :: (("277",enc_opt encode_TradeCondition msg.f_MDIncGrp_TradeCondition) :: (("282",enc_opt encode_string msg.f_MDIncGrp_MDEntryOriginator) :: (("283",enc_opt encode_string msg.f_MDIncGrp_LocationID) :: (("284",enc_opt encode_string msg.f_MDIncGrp_DeskID) :: (("286",enc_opt encode_OpenCloseSettlFlag msg.f_MDIncGrp_OpenCloseSettlFlag) :: (("59",enc_opt encode_TimeInForce msg.f_MDIncGrp_TimeInForce) :: (("432",enc_opt encode_LocalMktDate msg.f_MDIncGrp_ExpireDate) :: (("126",enc_opt encode_UTCTimestamp msg.f_MDIncGrp_ExpireTime) :: (("110",enc_opt encode_float msg.f_MDIncGrp_MinQty) :: (("18",enc_opt encode_ExecInst msg.f_MDIncGrp_ExecInst) :: (("287",enc_opt encode_int msg.f_MDIncGrp_SellerDays) :: (("37",enc_opt encode_string msg.f_MDIncGrp_OrderID) :: (("299",enc_opt encode_string msg.f_MDIncGrp_QuoteEntryID) :: (("288",enc_opt encode_string msg.f_MDIncGrp_MDEntryBuyer) :: (("289",enc_opt encode_string msg.f_MDIncGrp_MDEntrySeller) :: (("346",enc_opt encode_int msg.f_MDIncGrp_NumberOfOrders) :: (("290",enc_opt encode_int msg.f_MDIncGrp_MDEntryPositionNo) :: (("546",enc_opt encode_Scope msg.f_MDIncGrp_Scope) :: (("811",enc_opt encode_float msg.f_MDIncGrp_PriceDelta) :: (("451",enc_opt encode_float msg.f_MDIncGrp_NetChgPrevDay) :: (("58",enc_opt encode_string msg.f_MDIncGrp_Text) :: (("354",enc_opt encode_int msg.f_MDIncGrp_EncodedTextLen) :: (("355",enc_opt encode_string msg.f_MDIncGrp_EncodedText) :: [])))))))))))))))))))))))))))))))))))))))) ((@) (enc_repeat encode_InstrmtLegGrp "555" msg.f_MDIncGrp_InstrmtLegGrp) ((@) (enc_repeat encode_UndInstrmtGrp "711" msg.f_MDIncGrp_UndInstrmtGrp) [])))
;;

let encode_QuotReqGrp ( msg ) =
    (@) (encode_YieldData msg.f_QuotReqGrp_YieldData) ((@) (encode_SpreadOrBenchmarkCurveData msg.f_QuotReqGrp_SpreadOrBenchmarkCurveData) ((@) (encode_OrderQtyData msg.f_QuotReqGrp_OrderQtyData) ((@) (encode_FinancingDetails msg.f_QuotReqGrp_FinancingDetails) ((@) (encode_Instrument msg.f_QuotReqGrp_Instrument) ((@) (("140",enc_opt encode_float msg.f_QuotReqGrp_PrevClosePx) :: (("303",enc_opt encode_QuoteRequestType msg.f_QuotReqGrp_QuoteRequestType) :: (("537",enc_opt encode_QuoteType msg.f_QuotReqGrp_QuoteType) :: (("336",enc_opt encode_string msg.f_QuotReqGrp_TradingSessionID) :: (("625",enc_opt encode_string msg.f_QuotReqGrp_TradingSessionSubID) :: (("229",enc_opt encode_LocalMktDate msg.f_QuotReqGrp_TradeOriginationDate) :: (("54",enc_opt encode_Side msg.f_QuotReqGrp_Side) :: (("854",enc_opt encode_QtyType msg.f_QuotReqGrp_QtyType) :: (("63",enc_opt encode_SettlType msg.f_QuotReqGrp_SettlType) :: (("64",enc_opt encode_LocalMktDate msg.f_QuotReqGrp_SettlDate) :: (("193",enc_opt encode_LocalMktDate msg.f_QuotReqGrp_SettlDate2) :: (("192",enc_opt encode_float msg.f_QuotReqGrp_OrderQty2) :: (("15",enc_opt encode_Currency msg.f_QuotReqGrp_Currency) :: (("1",enc_opt encode_string msg.f_QuotReqGrp_Account) :: (("660",enc_opt encode_AcctIDSource msg.f_QuotReqGrp_AcctIDSource) :: (("581",enc_opt encode_AccountType msg.f_QuotReqGrp_AccountType) :: (("692",enc_opt encode_QuotePriceType msg.f_QuotReqGrp_QuotePriceType) :: (("40",enc_opt encode_OrdType msg.f_QuotReqGrp_OrdType) :: (("62",enc_opt encode_UTCTimestamp msg.f_QuotReqGrp_ValidUntilTime) :: (("126",enc_opt encode_UTCTimestamp msg.f_QuotReqGrp_ExpireTime) :: (("60",enc_opt encode_UTCTimestamp msg.f_QuotReqGrp_TransactTime) :: (("423",enc_opt encode_PriceType msg.f_QuotReqGrp_PriceType) :: (("44",enc_opt encode_float msg.f_QuotReqGrp_Price) :: (("640",enc_opt encode_float msg.f_QuotReqGrp_Price2) :: [])))))))))))))))))))))))) ((@) (enc_repeat encode_Parties "453" msg.f_QuotReqGrp_Parties) ((@) (enc_repeat encode_QuotQualGrp "735" msg.f_QuotReqGrp_QuotQualGrp) ((@) (enc_repeat encode_QuotReqLegsGrp "555" msg.f_QuotReqGrp_QuotReqLegsGrp) ((@) (enc_repeat encode_Stipulations "232" msg.f_QuotReqGrp_Stipulations) ((@) (enc_repeat encode_UndInstrmtGrp "711" msg.f_QuotReqGrp_UndInstrmtGrp) []))))))))))
;;

let encode_QuotReqRjctGrp ( msg ) =
    (@) (encode_YieldData msg.f_QuotReqRjctGrp_YieldData) ((@) (encode_SpreadOrBenchmarkCurveData msg.f_QuotReqRjctGrp_SpreadOrBenchmarkCurveData) ((@) (encode_OrderQtyData msg.f_QuotReqRjctGrp_OrderQtyData) ((@) (encode_FinancingDetails msg.f_QuotReqRjctGrp_FinancingDetails) ((@) (encode_Instrument msg.f_QuotReqRjctGrp_Instrument) ((@) (("140",enc_opt encode_float msg.f_QuotReqRjctGrp_PrevClosePx) :: (("303",enc_opt encode_QuoteRequestType msg.f_QuotReqRjctGrp_QuoteRequestType) :: (("537",enc_opt encode_QuoteType msg.f_QuotReqRjctGrp_QuoteType) :: (("336",enc_opt encode_string msg.f_QuotReqRjctGrp_TradingSessionID) :: (("625",enc_opt encode_string msg.f_QuotReqRjctGrp_TradingSessionSubID) :: (("229",enc_opt encode_LocalMktDate msg.f_QuotReqRjctGrp_TradeOriginationDate) :: (("54",enc_opt encode_Side msg.f_QuotReqRjctGrp_Side) :: (("854",enc_opt encode_QtyType msg.f_QuotReqRjctGrp_QtyType) :: (("63",enc_opt encode_SettlType msg.f_QuotReqRjctGrp_SettlType) :: (("64",enc_opt encode_LocalMktDate msg.f_QuotReqRjctGrp_SettlDate) :: (("193",enc_opt encode_LocalMktDate msg.f_QuotReqRjctGrp_SettlDate2) :: (("192",enc_opt encode_float msg.f_QuotReqRjctGrp_OrderQty2) :: (("15",enc_opt encode_Currency msg.f_QuotReqRjctGrp_Currency) :: (("1",enc_opt encode_string msg.f_QuotReqRjctGrp_Account) :: (("660",enc_opt encode_AcctIDSource msg.f_QuotReqRjctGrp_AcctIDSource) :: (("581",enc_opt encode_AccountType msg.f_QuotReqRjctGrp_AccountType) :: (("692",enc_opt encode_QuotePriceType msg.f_QuotReqRjctGrp_QuotePriceType) :: (("40",enc_opt encode_OrdType msg.f_QuotReqRjctGrp_OrdType) :: (("126",enc_opt encode_UTCTimestamp msg.f_QuotReqRjctGrp_ExpireTime) :: (("60",enc_opt encode_UTCTimestamp msg.f_QuotReqRjctGrp_TransactTime) :: (("423",enc_opt encode_PriceType msg.f_QuotReqRjctGrp_PriceType) :: (("44",enc_opt encode_float msg.f_QuotReqRjctGrp_Price) :: (("640",enc_opt encode_float msg.f_QuotReqRjctGrp_Price2) :: []))))))))))))))))))))))) ((@) (enc_repeat encode_Parties "453" msg.f_QuotReqRjctGrp_Parties) ((@) (enc_repeat encode_QuotQualGrp "735" msg.f_QuotReqRjctGrp_QuotQualGrp) ((@) (enc_repeat encode_QuotReqLegsGrp "555" msg.f_QuotReqRjctGrp_QuotReqLegsGrp) ((@) (enc_repeat encode_Stipulations "232" msg.f_QuotReqRjctGrp_Stipulations) ((@) (enc_repeat encode_UndInstrmtGrp "711" msg.f_QuotReqRjctGrp_UndInstrmtGrp) []))))))))))
;;

let encode_SecListGrp ( msg ) =
    (@) (encode_YieldData msg.f_SecListGrp_YieldData) ((@) (encode_SpreadOrBenchmarkCurveData msg.f_SecListGrp_SpreadOrBenchmarkCurveData) ((@) (encode_FinancingDetails msg.f_SecListGrp_FinancingDetails) ((@) (encode_InstrumentExtension msg.f_SecListGrp_InstrumentExtension) ((@) (encode_Instrument msg.f_SecListGrp_Instrument) ((@) (("15",enc_opt encode_Currency msg.f_SecListGrp_Currency) :: (("561",enc_opt encode_float msg.f_SecListGrp_RoundLot) :: (("562",enc_opt encode_float msg.f_SecListGrp_MinTradeVol) :: (("336",enc_opt encode_string msg.f_SecListGrp_TradingSessionID) :: (("625",enc_opt encode_string msg.f_SecListGrp_TradingSessionSubID) :: (("827",enc_opt encode_ExpirationCycle msg.f_SecListGrp_ExpirationCycle) :: (("58",enc_opt encode_string msg.f_SecListGrp_Text) :: (("354",enc_opt encode_int msg.f_SecListGrp_EncodedTextLen) :: (("355",enc_opt encode_string msg.f_SecListGrp_EncodedText) :: []))))))))) ((@) (enc_repeat encode_InstrmtLegSecListGrp "555" msg.f_SecListGrp_InstrmtLegSecListGrp) ((@) (enc_repeat encode_Stipulations "232" msg.f_SecListGrp_Stipulations) ((@) (enc_repeat encode_UndInstrmtGrp "711" msg.f_SecListGrp_UndInstrmtGrp) []))))))))
;;

let encode_QuotCxlEntriesGrp ( msg ) =
    (@) (encode_FinancingDetails msg.f_QuotCxlEntriesGrp_FinancingDetails) ((@) (encode_Instrument msg.f_QuotCxlEntriesGrp_Instrument) ((@) [] ((@) (enc_repeat encode_InstrmtLegGrp "555" msg.f_QuotCxlEntriesGrp_InstrmtLegGrp) ((@) (enc_repeat encode_UndInstrmtGrp "711" msg.f_QuotCxlEntriesGrp_UndInstrmtGrp) []))))
;;

let encode_SettlInstructionsData ( msg ) =
    (@) (("172",enc_opt encode_SettlDeliveryType msg.f_SettlInstructionsData_SettlDeliveryType) :: (("169",enc_opt encode_StandInstDbType msg.f_SettlInstructionsData_StandInstDbType) :: (("170",enc_opt encode_string msg.f_SettlInstructionsData_StandInstDbName) :: (("171",enc_opt encode_string msg.f_SettlInstructionsData_StandInstDbID) :: [])))) ((@) (enc_repeat encode_DlvyInstGrp "85" msg.f_SettlInstructionsData_DlvyInstGrp) [])
;;

let encode_SideCrossOrdModGrp ( msg ) =
    (@) (encode_CommissionData msg.f_SideCrossOrdModGrp_CommissionData) ((@) (encode_OrderQtyData msg.f_SideCrossOrdModGrp_OrderQtyData) ((@) (("54",enc_opt encode_Side msg.f_SideCrossOrdModGrp_Side) :: (("11",enc_opt encode_string msg.f_SideCrossOrdModGrp_ClOrdID) :: (("526",enc_opt encode_string msg.f_SideCrossOrdModGrp_SecondaryClOrdID) :: (("583",enc_opt encode_string msg.f_SideCrossOrdModGrp_ClOrdLinkID) :: (("229",enc_opt encode_LocalMktDate msg.f_SideCrossOrdModGrp_TradeOriginationDate) :: (("75",enc_opt encode_LocalMktDate msg.f_SideCrossOrdModGrp_TradeDate) :: (("1",enc_opt encode_string msg.f_SideCrossOrdModGrp_Account) :: (("660",enc_opt encode_AcctIDSource msg.f_SideCrossOrdModGrp_AcctIDSource) :: (("581",enc_opt encode_AccountType msg.f_SideCrossOrdModGrp_AccountType) :: (("589",enc_opt encode_DayBookingInst msg.f_SideCrossOrdModGrp_DayBookingInst) :: (("590",enc_opt encode_BookingUnit msg.f_SideCrossOrdModGrp_BookingUnit) :: (("591",enc_opt encode_PreallocMethod msg.f_SideCrossOrdModGrp_PreallocMethod) :: (("70",enc_opt encode_string msg.f_SideCrossOrdModGrp_AllocID) :: (("854",enc_opt encode_QtyType msg.f_SideCrossOrdModGrp_QtyType) :: (("528",enc_opt encode_OrderCapacity msg.f_SideCrossOrdModGrp_OrderCapacity) :: (("529",enc_opt encode_OrderRestrictions msg.f_SideCrossOrdModGrp_OrderRestrictions) :: (("582",enc_opt encode_CustOrderCapacity msg.f_SideCrossOrdModGrp_CustOrderCapacity) :: (("121",enc_opt encode_ForexReq msg.f_SideCrossOrdModGrp_ForexReq) :: (("120",enc_opt encode_Currency msg.f_SideCrossOrdModGrp_SettlCurrency) :: (("775",enc_opt encode_BookingType msg.f_SideCrossOrdModGrp_BookingType) :: (("58",enc_opt encode_string msg.f_SideCrossOrdModGrp_Text) :: (("354",enc_opt encode_int msg.f_SideCrossOrdModGrp_EncodedTextLen) :: (("355",enc_opt encode_string msg.f_SideCrossOrdModGrp_EncodedText) :: (("77",enc_opt encode_PositionEffect msg.f_SideCrossOrdModGrp_PositionEffect) :: (("203",enc_opt encode_CoveredOrUncovered msg.f_SideCrossOrdModGrp_CoveredOrUncovered) :: (("544",enc_opt encode_CashMargin msg.f_SideCrossOrdModGrp_CashMargin) :: (("635",enc_opt encode_ClearingFeeIndicator msg.f_SideCrossOrdModGrp_ClearingFeeIndicator) :: (("377",enc_opt encode_SolicitedFlag msg.f_SideCrossOrdModGrp_SolicitedFlag) :: (("659",enc_opt encode_string msg.f_SideCrossOrdModGrp_SideComplianceID) :: []))))))))))))))))))))))))))))) ((@) (enc_repeat encode_PreAllocGrp "78" msg.f_SideCrossOrdModGrp_PreAllocGrp) ((@) (enc_repeat encode_Parties "453" msg.f_SideCrossOrdModGrp_Parties) []))))
;;

let encode_ListOrdGrp ( msg ) =
    (@) (encode_DiscretionInstructions msg.f_ListOrdGrp_DiscretionInstructions) ((@) (encode_PegInstructions msg.f_ListOrdGrp_PegInstructions) ((@) (encode_CommissionData msg.f_ListOrdGrp_CommissionData) ((@) (encode_YieldData msg.f_ListOrdGrp_YieldData) ((@) (encode_SpreadOrBenchmarkCurveData msg.f_ListOrdGrp_SpreadOrBenchmarkCurveData) ((@) (encode_OrderQtyData msg.f_ListOrdGrp_OrderQtyData) ((@) (encode_Instrument msg.f_ListOrdGrp_Instrument) ((@) (("11",enc_opt encode_string msg.f_ListOrdGrp_ClOrdID) :: (("526",enc_opt encode_string msg.f_ListOrdGrp_SecondaryClOrdID) :: (("67",enc_opt encode_int msg.f_ListOrdGrp_ListSeqNo) :: (("583",enc_opt encode_string msg.f_ListOrdGrp_ClOrdLinkID) :: (("160",enc_opt encode_SettlInstMode msg.f_ListOrdGrp_SettlInstMode) :: (("229",enc_opt encode_LocalMktDate msg.f_ListOrdGrp_TradeOriginationDate) :: (("75",enc_opt encode_LocalMktDate msg.f_ListOrdGrp_TradeDate) :: (("1",enc_opt encode_string msg.f_ListOrdGrp_Account) :: (("660",enc_opt encode_AcctIDSource msg.f_ListOrdGrp_AcctIDSource) :: (("581",enc_opt encode_AccountType msg.f_ListOrdGrp_AccountType) :: (("589",enc_opt encode_DayBookingInst msg.f_ListOrdGrp_DayBookingInst) :: (("590",enc_opt encode_BookingUnit msg.f_ListOrdGrp_BookingUnit) :: (("70",enc_opt encode_string msg.f_ListOrdGrp_AllocID) :: (("591",enc_opt encode_PreallocMethod msg.f_ListOrdGrp_PreallocMethod) :: (("63",enc_opt encode_SettlType msg.f_ListOrdGrp_SettlType) :: (("64",enc_opt encode_LocalMktDate msg.f_ListOrdGrp_SettlDate) :: (("544",enc_opt encode_CashMargin msg.f_ListOrdGrp_CashMargin) :: (("635",enc_opt encode_ClearingFeeIndicator msg.f_ListOrdGrp_ClearingFeeIndicator) :: (("21",enc_opt encode_HandlInst msg.f_ListOrdGrp_HandlInst) :: (("18",enc_opt encode_ExecInst msg.f_ListOrdGrp_ExecInst) :: (("110",enc_opt encode_float msg.f_ListOrdGrp_MinQty) :: (("111",enc_opt encode_float msg.f_ListOrdGrp_MaxFloor) :: (("100",enc_opt encode_Exchange msg.f_ListOrdGrp_ExDestination) :: (("81",enc_opt encode_ProcessCode msg.f_ListOrdGrp_ProcessCode) :: (("140",enc_opt encode_float msg.f_ListOrdGrp_PrevClosePx) :: (("54",enc_opt encode_Side msg.f_ListOrdGrp_Side) :: (("401",enc_opt encode_SideValueInd msg.f_ListOrdGrp_SideValueInd) :: (("114",enc_opt encode_LocateReqd msg.f_ListOrdGrp_LocateReqd) :: (("60",enc_opt encode_UTCTimestamp msg.f_ListOrdGrp_TransactTime) :: (("854",enc_opt encode_QtyType msg.f_ListOrdGrp_QtyType) :: (("40",enc_opt encode_OrdType msg.f_ListOrdGrp_OrdType) :: (("423",enc_opt encode_PriceType msg.f_ListOrdGrp_PriceType) :: (("44",enc_opt encode_float msg.f_ListOrdGrp_Price) :: (("99",enc_opt encode_float msg.f_ListOrdGrp_StopPx) :: (("15",enc_opt encode_Currency msg.f_ListOrdGrp_Currency) :: (("376",enc_opt encode_string msg.f_ListOrdGrp_ComplianceID) :: (("377",enc_opt encode_SolicitedFlag msg.f_ListOrdGrp_SolicitedFlag) :: (("23",enc_opt encode_string msg.f_ListOrdGrp_IOIID) :: (("117",enc_opt encode_string msg.f_ListOrdGrp_QuoteID) :: (("59",enc_opt encode_TimeInForce msg.f_ListOrdGrp_TimeInForce) :: (("168",enc_opt encode_UTCTimestamp msg.f_ListOrdGrp_EffectiveTime) :: (("432",enc_opt encode_LocalMktDate msg.f_ListOrdGrp_ExpireDate) :: (("126",enc_opt encode_UTCTimestamp msg.f_ListOrdGrp_ExpireTime) :: (("427",enc_opt encode_GTBookingInst msg.f_ListOrdGrp_GTBookingInst) :: (("528",enc_opt encode_OrderCapacity msg.f_ListOrdGrp_OrderCapacity) :: (("529",enc_opt encode_OrderRestrictions msg.f_ListOrdGrp_OrderRestrictions) :: (("582",enc_opt encode_CustOrderCapacity msg.f_ListOrdGrp_CustOrderCapacity) :: (("121",enc_opt encode_ForexReq msg.f_ListOrdGrp_ForexReq) :: (("120",enc_opt encode_Currency msg.f_ListOrdGrp_SettlCurrency) :: (("775",enc_opt encode_BookingType msg.f_ListOrdGrp_BookingType) :: (("58",enc_opt encode_string msg.f_ListOrdGrp_Text) :: (("354",enc_opt encode_int msg.f_ListOrdGrp_EncodedTextLen) :: (("355",enc_opt encode_string msg.f_ListOrdGrp_EncodedText) :: (("193",enc_opt encode_LocalMktDate msg.f_ListOrdGrp_SettlDate2) :: (("192",enc_opt encode_float msg.f_ListOrdGrp_OrderQty2) :: (("640",enc_opt encode_float msg.f_ListOrdGrp_Price2) :: (("77",enc_opt encode_PositionEffect msg.f_ListOrdGrp_PositionEffect) :: (("203",enc_opt encode_CoveredOrUncovered msg.f_ListOrdGrp_CoveredOrUncovered) :: (("210",enc_opt encode_float msg.f_ListOrdGrp_MaxShow) :: (("847",enc_opt encode_TargetStrategy msg.f_ListOrdGrp_TargetStrategy) :: (("848",enc_opt encode_string msg.f_ListOrdGrp_TargetStrategyParameters) :: (("849",enc_opt encode_float msg.f_ListOrdGrp_ParticipationRate) :: (("494",enc_opt encode_string msg.f_ListOrdGrp_Designation) :: []))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) ((@) (enc_repeat encode_Stipulations "232" msg.f_ListOrdGrp_Stipulations) ((@) (enc_repeat encode_UndInstrmtGrp "711" msg.f_ListOrdGrp_UndInstrmtGrp) ((@) (enc_repeat encode_TrdgSesGrp "386" msg.f_ListOrdGrp_TrdgSesGrp) ((@) (enc_repeat encode_PreAllocGrp "78" msg.f_ListOrdGrp_PreAllocGrp) ((@) (enc_repeat encode_Parties "453" msg.f_ListOrdGrp_Parties) []))))))))))))
;;

let encode_SettlInstGrp ( msg ) =
    (@) (encode_SettlInstructionsData msg.f_SettlInstGrp_SettlInstructionsData) ((@) (("162",enc_opt encode_string msg.f_SettlInstGrp_SettlInstID) :: (("163",enc_opt encode_SettlInstTransType msg.f_SettlInstGrp_SettlInstTransType) :: (("214",enc_opt encode_string msg.f_SettlInstGrp_SettlInstRefID) :: (("54",enc_opt encode_Side msg.f_SettlInstGrp_Side) :: (("460",enc_opt encode_Product msg.f_SettlInstGrp_Product) :: (("167",enc_opt encode_SecurityType msg.f_SettlInstGrp_SecurityType) :: (("461",enc_opt encode_string msg.f_SettlInstGrp_CFICode) :: (("168",enc_opt encode_UTCTimestamp msg.f_SettlInstGrp_EffectiveTime) :: (("126",enc_opt encode_UTCTimestamp msg.f_SettlInstGrp_ExpireTime) :: (("779",enc_opt encode_UTCTimestamp msg.f_SettlInstGrp_LastUpdateTime) :: (("492",enc_opt encode_PaymentMethod msg.f_SettlInstGrp_PaymentMethod) :: (("476",enc_opt encode_string msg.f_SettlInstGrp_PaymentRef) :: (("488",enc_opt encode_string msg.f_SettlInstGrp_CardHolderName) :: (("489",enc_opt encode_string msg.f_SettlInstGrp_CardNumber) :: (("503",enc_opt encode_LocalMktDate msg.f_SettlInstGrp_CardStartDate) :: (("490",enc_opt encode_LocalMktDate msg.f_SettlInstGrp_CardExpDate) :: (("491",enc_opt encode_string msg.f_SettlInstGrp_CardIssNum) :: (("504",enc_opt encode_LocalMktDate msg.f_SettlInstGrp_PaymentDate) :: (("505",enc_opt encode_string msg.f_SettlInstGrp_PaymentRemitterID) :: []))))))))))))))))))) ((@) (enc_repeat encode_Parties "453" msg.f_SettlInstGrp_Parties) []))
;;

let encode_AllocGrp ( msg ) =
    (@) (encode_SettlInstructionsData msg.f_AllocGrp_SettlInstructionsData) ((@) (encode_CommissionData msg.f_AllocGrp_CommissionData) ((@) (("79",enc_opt encode_string msg.f_AllocGrp_AllocAccount) :: (("661",enc_opt encode_int msg.f_AllocGrp_AllocAcctIDSource) :: (("573",enc_opt encode_MatchStatus msg.f_AllocGrp_MatchStatus) :: (("366",enc_opt encode_float msg.f_AllocGrp_AllocPrice) :: (("80",enc_opt encode_float msg.f_AllocGrp_AllocQty) :: (("467",enc_opt encode_string msg.f_AllocGrp_IndividualAllocID) :: (("81",enc_opt encode_ProcessCode msg.f_AllocGrp_ProcessCode) :: (("208",enc_opt encode_NotifyBrokerOfCredit msg.f_AllocGrp_NotifyBrokerOfCredit) :: (("209",enc_opt encode_AllocHandlInst msg.f_AllocGrp_AllocHandlInst) :: (("161",enc_opt encode_string msg.f_AllocGrp_AllocText) :: (("360",enc_opt encode_int msg.f_AllocGrp_EncodedAllocTextLen) :: (("361",enc_opt encode_string msg.f_AllocGrp_EncodedAllocText) :: (("153",enc_opt encode_float msg.f_AllocGrp_AllocAvgPx) :: (("154",enc_opt encode_float msg.f_AllocGrp_AllocNetMoney) :: (("119",enc_opt encode_float msg.f_AllocGrp_SettlCurrAmt) :: (("737",enc_opt encode_float msg.f_AllocGrp_AllocSettlCurrAmt) :: (("120",enc_opt encode_Currency msg.f_AllocGrp_SettlCurrency) :: (("736",enc_opt encode_Currency msg.f_AllocGrp_AllocSettlCurrency) :: (("155",enc_opt encode_float msg.f_AllocGrp_SettlCurrFxRate) :: (("156",enc_opt encode_SettlCurrFxRateCalc msg.f_AllocGrp_SettlCurrFxRateCalc) :: (("742",enc_opt encode_float msg.f_AllocGrp_AllocAccruedInterestAmt) :: (("741",enc_opt encode_float msg.f_AllocGrp_AllocInterestAtMaturity) :: (("780",enc_opt encode_AllocSettlInstType msg.f_AllocGrp_AllocSettlInstType) :: []))))))))))))))))))))))) ((@) (enc_repeat encode_ClrInstGrp "576" msg.f_AllocGrp_ClrInstGrp) ((@) (enc_repeat encode_MiscFeesGrp "136" msg.f_AllocGrp_MiscFeesGrp) ((@) (enc_repeat encode_NestedParties "539" msg.f_AllocGrp_NestedParties) [])))))
;;

let encode_QuotSetGrp ( msg ) =
    (@) (encode_UnderlyingInstrument msg.f_QuotSetGrp_UnderlyingInstrument) ((@) (("302",enc_opt encode_string msg.f_QuotSetGrp_QuoteSetID) :: (("367",enc_opt encode_UTCTimestamp msg.f_QuotSetGrp_QuoteSetValidUntilTime) :: (("304",enc_opt encode_int msg.f_QuotSetGrp_TotNoQuoteEntries) :: (("893",enc_opt encode_LastFragment msg.f_QuotSetGrp_LastFragment) :: [])))) ((@) (enc_repeat encode_QuotEntryGrp "295" msg.f_QuotSetGrp_QuotEntryGrp) []))
;;

let encode_QuotSetAckGrp ( msg ) =
    (@) (encode_UnderlyingInstrument msg.f_QuotSetAckGrp_UnderlyingInstrument) ((@) (("302",enc_opt encode_string msg.f_QuotSetAckGrp_QuoteSetID) :: (("304",enc_opt encode_int msg.f_QuotSetAckGrp_TotNoQuoteEntries) :: (("893",enc_opt encode_LastFragment msg.f_QuotSetAckGrp_LastFragment) :: []))) ((@) (enc_repeat encode_QuotEntryAckGrp "295" msg.f_QuotSetAckGrp_QuotEntryAckGrp) []))
;;