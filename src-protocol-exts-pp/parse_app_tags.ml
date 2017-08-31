(* Aesthetic Integration copyright 2017 *)
(* @meta[imandra_ignore] on @end *)
open Full_app_tags;;
(* @meta[imandra_ignore] off @end *)

let parse_app_msg_tag ( tag ) =
    (match tag with
        | "7" -> (Some (Full_Msg_Advertisement_Tag))
        | "J" -> (Some (Full_Msg_Allocation_Tag))
        | "P" -> (Some (Full_Msg_AllocationInstructionAck_Tag))
        | "k" -> (Some (Full_Msg_BidRequest_Tag))
        | "l" -> (Some (Full_Msg_BidResponse_Tag))
        | "Q" -> (Some (Full_Msg_DontKnowTrade_Tag))
        | "C" -> (Some (Full_Msg_Email_Tag))
        | "8" -> (Some (Full_Msg_ExecutionReport_Tag))
        | "6" -> (Some (Full_Msg_IOI_Tag))
        | "K" -> (Some (Full_Msg_ListCancelRequest_Tag))
        | "L" -> (Some (Full_Msg_ListExecute_Tag))
        | "N" -> (Some (Full_Msg_ListStatus_Tag))
        | "M" -> (Some (Full_Msg_ListStatusRequest_Tag))
        | "m" -> (Some (Full_Msg_ListStrikePrice_Tag))
        | "X" -> (Some (Full_Msg_MarketDataIncrementalRefresh_Tag))
        | "V" -> (Some (Full_Msg_MarketDataRequest_Tag))
        | "Y" -> (Some (Full_Msg_MarketDataRequestReject_Tag))
        | "W" -> (Some (Full_Msg_MarketDataSnapshotFullRefresh_Tag))
        | "i" -> (Some (Full_Msg_MassQuote_Tag))
        | "B" -> (Some (Full_Msg_News_Tag))
        | "9" -> (Some (Full_Msg_OrderCancelReject_Tag))
        | "G" -> (Some (Full_Msg_OrderCancelReplaceRequest_Tag))
        | "F" -> (Some (Full_Msg_OrderCancelRequest_Tag))
        | "E" -> (Some (Full_Msg_OrderList_Tag))
        | "D" -> (Some (Full_Msg_OrderSingle_Tag))
        | "H" -> (Some (Full_Msg_OrderStatusRequest_Tag))
        | "S" -> (Some (Full_Msg_Quote_Tag))
        | "b" -> (Some (Full_Msg_QuoteAcknowledgement_Tag))
        | "Z" -> (Some (Full_Msg_QuoteCancel_Tag))
        | "R" -> (Some (Full_Msg_QuoteRequest_Tag))
        | "a" -> (Some (Full_Msg_QuoteStatusRequest_Tag))
        | "d" -> (Some (Full_Msg_SecurityDefinition_Tag))
        | "c" -> (Some (Full_Msg_SecurityDefinitionRequest_Tag))
        | "f" -> (Some (Full_Msg_SecurityStatus_Tag))
        | "e" -> (Some (Full_Msg_SecurityStatusRequest_Tag))
        | "T" -> (Some (Full_Msg_SettlementInstructions_Tag))
        | "h" -> (Some (Full_Msg_TradingSessionStatus_Tag))
        | "g" -> (Some (Full_Msg_TradingSessionStatusRequest_Tag))
        | _ -> (None)
    )
;;

let parse_app_field_tag ( tag ) =
    (match tag with
        | "2" -> (Some (Full_Field_AdvId_Tag))
        | "5" -> (Some (Full_Field_AdvTransType_Tag))
        | "3" -> (Some (Full_Field_AdvRefID_Tag))
        | "55" -> (Some (Full_Field_Symbol_Tag))
        | "65" -> (Some (Full_Field_SymbolSfx_Tag))
        | "48" -> (Some (Full_Field_SecurityID_Tag))
        | "22" -> (Some (Full_Field_IDSource_Tag))
        | "167" -> (Some (Full_Field_SecurityType_Tag))
        | "200" -> (Some (Full_Field_MaturityMonthYear_Tag))
        | "205" -> (Some (Full_Field_MaturityDay_Tag))
        | "201" -> (Some (Full_Field_PutOrCall_Tag))
        | "202" -> (Some (Full_Field_StrikePrice_Tag))
        | "206" -> (Some (Full_Field_OptAttribute_Tag))
        | "231" -> (Some (Full_Field_ContractMultiplier_Tag))
        | "223" -> (Some (Full_Field_CouponRate_Tag))
        | "207" -> (Some (Full_Field_SecurityExchange_Tag))
        | "106" -> (Some (Full_Field_Issuer_Tag))
        | "348" -> (Some (Full_Field_EncodedIssuerLen_Tag))
        | "349" -> (Some (Full_Field_EncodedIssuer_Tag))
        | "107" -> (Some (Full_Field_SecurityDesc_Tag))
        | "350" -> (Some (Full_Field_EncodedSecurityDescLen_Tag))
        | "351" -> (Some (Full_Field_EncodedSecurityDesc_Tag))
        | "4" -> (Some (Full_Field_AdvSide_Tag))
        | "53" -> (Some (Full_Field_Shares_Tag))
        | "44" -> (Some (Full_Field_Price_Tag))
        | "15" -> (Some (Full_Field_Currency_Tag))
        | "75" -> (Some (Full_Field_TradeDate_Tag))
        | "60" -> (Some (Full_Field_TransactTime_Tag))
        | "58" -> (Some (Full_Field_Text_Tag))
        | "354" -> (Some (Full_Field_EncodedTextLen_Tag))
        | "355" -> (Some (Full_Field_EncodedText_Tag))
        | "149" -> (Some (Full_Field_URLLink_Tag))
        | "30" -> (Some (Full_Field_LastMkt_Tag))
        | "336" -> (Some (Full_Field_TradingSessionID_Tag))
        | "70" -> (Some (Full_Field_AllocID_Tag))
        | "71" -> (Some (Full_Field_AllocTransType_Tag))
        | "72" -> (Some (Full_Field_RefAllocID_Tag))
        | "196" -> (Some (Full_Field_AllocLinkID_Tag))
        | "197" -> (Some (Full_Field_AllocLinkType_Tag))
        | "54" -> (Some (Full_Field_Side_Tag))
        | "6" -> (Some (Full_Field_AvgPx_Tag))
        | "74" -> (Some (Full_Field_AvgPrxPrecision_Tag))
        | "63" -> (Some (Full_Field_SettlmntTyp_Tag))
        | "64" -> (Some (Full_Field_FutSettDate_Tag))
        | "381" -> (Some (Full_Field_GrossTradeAmt_Tag))
        | "118" -> (Some (Full_Field_NetMoney_Tag))
        | "77" -> (Some (Full_Field_OpenClose_Tag))
        | "157" -> (Some (Full_Field_NumDaysInterest_Tag))
        | "158" -> (Some (Full_Field_AccruedInterestRate_Tag))
        | "73" -> (Some (Full_Field_NoOrders_Tag))
        | "11" -> (Some (Full_Field_ClOrdID_Tag))
        | "37" -> (Some (Full_Field_OrderID_Tag))
        | "198" -> (Some (Full_Field_SecondaryOrderID_Tag))
        | "66" -> (Some (Full_Field_ListID_Tag))
        | "105" -> (Some (Full_Field_WaveNo_Tag))
        | "124" -> (Some (Full_Field_NoExecs_Tag))
        | "32" -> (Some (Full_Field_LastShares_Tag))
        | "17" -> (Some (Full_Field_ExecID_Tag))
        | "31" -> (Some (Full_Field_LastPx_Tag))
        | "29" -> (Some (Full_Field_LastCapacity_Tag))
        | "78" -> (Some (Full_Field_NoAllocs_Tag))
        | "79" -> (Some (Full_Field_AllocAccount_Tag))
        | "366" -> (Some (Full_Field_AllocPrice_Tag))
        | "80" -> (Some (Full_Field_AllocShares_Tag))
        | "81" -> (Some (Full_Field_ProcessCode_Tag))
        | "92" -> (Some (Full_Field_BrokerOfCredit_Tag))
        | "208" -> (Some (Full_Field_NotifyBrokerOfCredit_Tag))
        | "209" -> (Some (Full_Field_AllocHandlInst_Tag))
        | "161" -> (Some (Full_Field_AllocText_Tag))
        | "360" -> (Some (Full_Field_EncodedAllocTextLen_Tag))
        | "361" -> (Some (Full_Field_EncodedAllocText_Tag))
        | "76" -> (Some (Full_Field_ExecBroker_Tag))
        | "109" -> (Some (Full_Field_ClientID_Tag))
        | "12" -> (Some (Full_Field_Commission_Tag))
        | "13" -> (Some (Full_Field_CommType_Tag))
        | "153" -> (Some (Full_Field_AllocAvgPx_Tag))
        | "154" -> (Some (Full_Field_AllocNetMoney_Tag))
        | "119" -> (Some (Full_Field_SettlCurrAmt_Tag))
        | "120" -> (Some (Full_Field_SettlCurrency_Tag))
        | "155" -> (Some (Full_Field_SettlCurrFxRate_Tag))
        | "156" -> (Some (Full_Field_SettlCurrFxRateCalc_Tag))
        | "159" -> (Some (Full_Field_AccruedInterestAmt_Tag))
        | "160" -> (Some (Full_Field_SettlInstMode_Tag))
        | "136" -> (Some (Full_Field_NoMiscFees_Tag))
        | "137" -> (Some (Full_Field_MiscFeeAmt_Tag))
        | "138" -> (Some (Full_Field_MiscFeeCurr_Tag))
        | "139" -> (Some (Full_Field_MiscFeeType_Tag))
        | "87" -> (Some (Full_Field_AllocStatus_Tag))
        | "88" -> (Some (Full_Field_AllocRejCode_Tag))
        | "390" -> (Some (Full_Field_BidID_Tag))
        | "391" -> (Some (Full_Field_ClientBidID_Tag))
        | "374" -> (Some (Full_Field_BidRequestTransType_Tag))
        | "392" -> (Some (Full_Field_ListName_Tag))
        | "393" -> (Some (Full_Field_TotalNumSecurities_Tag))
        | "394" -> (Some (Full_Field_BidType_Tag))
        | "395" -> (Some (Full_Field_NumTickets_Tag))
        | "396" -> (Some (Full_Field_SideValue1_Tag))
        | "397" -> (Some (Full_Field_SideValue2_Tag))
        | "409" -> (Some (Full_Field_LiquidityIndType_Tag))
        | "410" -> (Some (Full_Field_WtAverageLiquidity_Tag))
        | "411" -> (Some (Full_Field_ExchangeForPhysical_Tag))
        | "412" -> (Some (Full_Field_OutMainCntryUIndex_Tag))
        | "413" -> (Some (Full_Field_CrossPercent_Tag))
        | "414" -> (Some (Full_Field_ProgRptReqs_Tag))
        | "415" -> (Some (Full_Field_ProgPeriodInterval_Tag))
        | "416" -> (Some (Full_Field_IncTaxInd_Tag))
        | "121" -> (Some (Full_Field_ForexReq_Tag))
        | "417" -> (Some (Full_Field_NumBidders_Tag))
        | "418" -> (Some (Full_Field_TradeType_Tag))
        | "419" -> (Some (Full_Field_BasisPxType_Tag))
        | "443" -> (Some (Full_Field_StrikeTime_Tag))
        | "398" -> (Some (Full_Field_NoBidDescriptors_Tag))
        | "399" -> (Some (Full_Field_BidDescriptorType_Tag))
        | "400" -> (Some (Full_Field_BidDescriptor_Tag))
        | "401" -> (Some (Full_Field_SideValueInd_Tag))
        | "404" -> (Some (Full_Field_LiquidityValue_Tag))
        | "441" -> (Some (Full_Field_LiquidityNumSecurities_Tag))
        | "402" -> (Some (Full_Field_LiquidityPctLow_Tag))
        | "403" -> (Some (Full_Field_LiquidityPctHigh_Tag))
        | "405" -> (Some (Full_Field_EFPTrackingError_Tag))
        | "406" -> (Some (Full_Field_FairValue_Tag))
        | "407" -> (Some (Full_Field_OutsideIndexPct_Tag))
        | "408" -> (Some (Full_Field_ValueOfFutures_Tag))
        | "420" -> (Some (Full_Field_NoBidComponents_Tag))
        | "430" -> (Some (Full_Field_NetGrossInd_Tag))
        | "1" -> (Some (Full_Field_Account_Tag))
        | "421" -> (Some (Full_Field_Country_Tag))
        | "423" -> (Some (Full_Field_PriceType_Tag))
        | "127" -> (Some (Full_Field_DKReason_Tag))
        | "38" -> (Some (Full_Field_OrderQty_Tag))
        | "152" -> (Some (Full_Field_CashOrderQty_Tag))
        | "164" -> (Some (Full_Field_EmailThreadID_Tag))
        | "94" -> (Some (Full_Field_EmailType_Tag))
        | "42" -> (Some (Full_Field_OrigTime_Tag))
        | "147" -> (Some (Full_Field_Subject_Tag))
        | "356" -> (Some (Full_Field_EncodedSubjectLen_Tag))
        | "357" -> (Some (Full_Field_EncodedSubject_Tag))
        | "95" -> (Some (Full_Field_RawDataLength_Tag))
        | "96" -> (Some (Full_Field_RawData_Tag))
        | "215" -> (Some (Full_Field_NoRoutingIDs_Tag))
        | "216" -> (Some (Full_Field_RoutingType_Tag))
        | "217" -> (Some (Full_Field_RoutingID_Tag))
        | "146" -> (Some (Full_Field_NoRelatedSym_Tag))
        | "46" -> (Some (Full_Field_RelatdSym_Tag))
        | "33" -> (Some (Full_Field_LinesOfText_Tag))
        | "41" -> (Some (Full_Field_OrigClOrdID_Tag))
        | "20" -> (Some (Full_Field_ExecTransType_Tag))
        | "19" -> (Some (Full_Field_ExecRefID_Tag))
        | "150" -> (Some (Full_Field_ExecType_Tag))
        | "39" -> (Some (Full_Field_OrdStatus_Tag))
        | "103" -> (Some (Full_Field_OrdRejReason_Tag))
        | "378" -> (Some (Full_Field_ExecRestatementReason_Tag))
        | "40" -> (Some (Full_Field_OrdType_Tag))
        | "99" -> (Some (Full_Field_StopPx_Tag))
        | "211" -> (Some (Full_Field_PegDifference_Tag))
        | "388" -> (Some (Full_Field_DiscretionInst_Tag))
        | "389" -> (Some (Full_Field_DiscretionOffset_Tag))
        | "376" -> (Some (Full_Field_ComplianceID_Tag))
        | "377" -> (Some (Full_Field_SolicitedFlag_Tag))
        | "59" -> (Some (Full_Field_TimeInForce_Tag))
        | "168" -> (Some (Full_Field_EffectiveTime_Tag))
        | "432" -> (Some (Full_Field_ExpireDate_Tag))
        | "126" -> (Some (Full_Field_ExpireTime_Tag))
        | "18" -> (Some (Full_Field_ExecInst_Tag))
        | "47" -> (Some (Full_Field_Rule80A_Tag))
        | "194" -> (Some (Full_Field_LastSpotRate_Tag))
        | "195" -> (Some (Full_Field_LastForwardPoints_Tag))
        | "151" -> (Some (Full_Field_LeavesQty_Tag))
        | "14" -> (Some (Full_Field_CumQty_Tag))
        | "424" -> (Some (Full_Field_DayOrderQty_Tag))
        | "425" -> (Some (Full_Field_DayCumQty_Tag))
        | "426" -> (Some (Full_Field_DayAvgPx_Tag))
        | "427" -> (Some (Full_Field_GTBookingInst_Tag))
        | "113" -> (Some (Full_Field_ReportToExch_Tag))
        | "21" -> (Some (Full_Field_HandlInst_Tag))
        | "110" -> (Some (Full_Field_MinQty_Tag))
        | "111" -> (Some (Full_Field_MaxFloor_Tag))
        | "210" -> (Some (Full_Field_MaxShow_Tag))
        | "193" -> (Some (Full_Field_FutSettDate2_Tag))
        | "192" -> (Some (Full_Field_OrderQty2_Tag))
        | "439" -> (Some (Full_Field_ClearingFirm_Tag))
        | "440" -> (Some (Full_Field_ClearingAccount_Tag))
        | "442" -> (Some (Full_Field_MultiLegReportingType_Tag))
        | "382" -> (Some (Full_Field_NoContraBrokers_Tag))
        | "375" -> (Some (Full_Field_ContraBroker_Tag))
        | "337" -> (Some (Full_Field_ContraTrader_Tag))
        | "437" -> (Some (Full_Field_ContraTradeQty_Tag))
        | "438" -> (Some (Full_Field_ContraTradeTime_Tag))
        | "23" -> (Some (Full_Field_IOIid_Tag))
        | "28" -> (Some (Full_Field_IOITransType_Tag))
        | "26" -> (Some (Full_Field_IOIRefID_Tag))
        | "27" -> (Some (Full_Field_IOIShares_Tag))
        | "62" -> (Some (Full_Field_ValidUntilTime_Tag))
        | "25" -> (Some (Full_Field_IOIQltyInd_Tag))
        | "130" -> (Some (Full_Field_IOINaturalFlag_Tag))
        | "218" -> (Some (Full_Field_SpreadToBenchmark_Tag))
        | "219" -> (Some (Full_Field_Benchmark_Tag))
        | "199" -> (Some (Full_Field_NoIOIQualifiers_Tag))
        | "104" -> (Some (Full_Field_IOIQualifier_Tag))
        | "429" -> (Some (Full_Field_ListStatusType_Tag))
        | "82" -> (Some (Full_Field_NoRpts_Tag))
        | "431" -> (Some (Full_Field_ListOrderStatus_Tag))
        | "83" -> (Some (Full_Field_RptSeq_Tag))
        | "444" -> (Some (Full_Field_ListStatusText_Tag))
        | "445" -> (Some (Full_Field_EncodedListStatusTextLen_Tag))
        | "446" -> (Some (Full_Field_EncodedListStatusText_Tag))
        | "68" -> (Some (Full_Field_TotNoOrders_Tag))
        | "84" -> (Some (Full_Field_CxlQty_Tag))
        | "422" -> (Some (Full_Field_TotNoStrikes_Tag))
        | "428" -> (Some (Full_Field_NoStrikes_Tag))
        | "140" -> (Some (Full_Field_PrevClosePx_Tag))
        | "262" -> (Some (Full_Field_MDReqID_Tag))
        | "268" -> (Some (Full_Field_NoMDEntries_Tag))
        | "279" -> (Some (Full_Field_MDUpdateAction_Tag))
        | "285" -> (Some (Full_Field_DeleteReason_Tag))
        | "269" -> (Some (Full_Field_MDEntryType_Tag))
        | "278" -> (Some (Full_Field_MDEntryID_Tag))
        | "280" -> (Some (Full_Field_MDEntryRefID_Tag))
        | "291" -> (Some (Full_Field_FinancialStatus_Tag))
        | "292" -> (Some (Full_Field_CorporateAction_Tag))
        | "270" -> (Some (Full_Field_MDEntryPx_Tag))
        | "271" -> (Some (Full_Field_MDEntrySize_Tag))
        | "272" -> (Some (Full_Field_MDEntryDate_Tag))
        | "273" -> (Some (Full_Field_MDEntryTime_Tag))
        | "274" -> (Some (Full_Field_TickDirection_Tag))
        | "275" -> (Some (Full_Field_MDMkt_Tag))
        | "276" -> (Some (Full_Field_QuoteCondition_Tag))
        | "277" -> (Some (Full_Field_TradeCondition_Tag))
        | "282" -> (Some (Full_Field_MDEntryOriginator_Tag))
        | "283" -> (Some (Full_Field_LocationID_Tag))
        | "284" -> (Some (Full_Field_DeskID_Tag))
        | "286" -> (Some (Full_Field_OpenCloseSettleFlag_Tag))
        | "287" -> (Some (Full_Field_SellerDays_Tag))
        | "299" -> (Some (Full_Field_QuoteEntryID_Tag))
        | "288" -> (Some (Full_Field_MDEntryBuyer_Tag))
        | "289" -> (Some (Full_Field_MDEntrySeller_Tag))
        | "346" -> (Some (Full_Field_NumberOfOrders_Tag))
        | "290" -> (Some (Full_Field_MDEntryPositionNo_Tag))
        | "387" -> (Some (Full_Field_TotalVolumeTraded_Tag))
        | "263" -> (Some (Full_Field_SubscriptionRequestType_Tag))
        | "264" -> (Some (Full_Field_MarketDepth_Tag))
        | "265" -> (Some (Full_Field_MDUpdateType_Tag))
        | "266" -> (Some (Full_Field_AggregatedBook_Tag))
        | "267" -> (Some (Full_Field_NoMDEntryTypes_Tag))
        | "281" -> (Some (Full_Field_MDReqRejReason_Tag))
        | "131" -> (Some (Full_Field_QuoteReqID_Tag))
        | "117" -> (Some (Full_Field_QuoteID_Tag))
        | "301" -> (Some (Full_Field_QuoteResponseLevel_Tag))
        | "293" -> (Some (Full_Field_DefBidSize_Tag))
        | "294" -> (Some (Full_Field_DefOfferSize_Tag))
        | "296" -> (Some (Full_Field_NoQuoteSets_Tag))
        | "302" -> (Some (Full_Field_QuoteSetID_Tag))
        | "311" -> (Some (Full_Field_UnderlyingSymbol_Tag))
        | "312" -> (Some (Full_Field_UnderlyingSymbolSfx_Tag))
        | "309" -> (Some (Full_Field_UnderlyingSecurityID_Tag))
        | "305" -> (Some (Full_Field_UnderlyingIDSource_Tag))
        | "310" -> (Some (Full_Field_UnderlyingSecurityType_Tag))
        | "313" -> (Some (Full_Field_UnderlyingMaturityMonthYear_Tag))
        | "314" -> (Some (Full_Field_UnderlyingMaturityDay_Tag))
        | "315" -> (Some (Full_Field_UnderlyingPutOrCall_Tag))
        | "316" -> (Some (Full_Field_UnderlyingStrikePrice_Tag))
        | "317" -> (Some (Full_Field_UnderlyingOptAttribute_Tag))
        | "436" -> (Some (Full_Field_UnderlyingContractMultiplier_Tag))
        | "435" -> (Some (Full_Field_UnderlyingCouponRate_Tag))
        | "308" -> (Some (Full_Field_UnderlyingSecurityExchange_Tag))
        | "306" -> (Some (Full_Field_UnderlyingIssuer_Tag))
        | "362" -> (Some (Full_Field_EncodedUnderlyingIssuerLen_Tag))
        | "363" -> (Some (Full_Field_EncodedUnderlyingIssuer_Tag))
        | "307" -> (Some (Full_Field_UnderlyingSecurityDesc_Tag))
        | "364" -> (Some (Full_Field_EncodedUnderlyingSecurityDescLen_Tag))
        | "365" -> (Some (Full_Field_EncodedUnderlyingSecurityDesc_Tag))
        | "367" -> (Some (Full_Field_QuoteSetValidUntilTime_Tag))
        | "304" -> (Some (Full_Field_TotQuoteEntries_Tag))
        | "295" -> (Some (Full_Field_NoQuoteEntries_Tag))
        | "132" -> (Some (Full_Field_BidPx_Tag))
        | "133" -> (Some (Full_Field_OfferPx_Tag))
        | "134" -> (Some (Full_Field_BidSize_Tag))
        | "135" -> (Some (Full_Field_OfferSize_Tag))
        | "188" -> (Some (Full_Field_BidSpotRate_Tag))
        | "190" -> (Some (Full_Field_OfferSpotRate_Tag))
        | "189" -> (Some (Full_Field_BidForwardPoints_Tag))
        | "191" -> (Some (Full_Field_OfferForwardPoints_Tag))
        | "61" -> (Some (Full_Field_Urgency_Tag))
        | "148" -> (Some (Full_Field_Headline_Tag))
        | "358" -> (Some (Full_Field_EncodedHeadlineLen_Tag))
        | "359" -> (Some (Full_Field_EncodedHeadline_Tag))
        | "434" -> (Some (Full_Field_CxlRejResponseTo_Tag))
        | "102" -> (Some (Full_Field_CxlRejReason_Tag))
        | "100" -> (Some (Full_Field_ExDestination_Tag))
        | "203" -> (Some (Full_Field_CoveredOrUncovered_Tag))
        | "204" -> (Some (Full_Field_CustomerOrFirm_Tag))
        | "114" -> (Some (Full_Field_LocateReqd_Tag))
        | "386" -> (Some (Full_Field_NoTradingSessions_Tag))
        | "433" -> (Some (Full_Field_ListExecInstType_Tag))
        | "69" -> (Some (Full_Field_ListExecInst_Tag))
        | "352" -> (Some (Full_Field_EncodedListExecInstLen_Tag))
        | "353" -> (Some (Full_Field_EncodedListExecInst_Tag))
        | "67" -> (Some (Full_Field_ListSeqNo_Tag))
        | "297" -> (Some (Full_Field_QuoteAckStatus_Tag))
        | "300" -> (Some (Full_Field_QuoteRejectReason_Tag))
        | "368" -> (Some (Full_Field_QuoteEntryRejectReason_Tag))
        | "298" -> (Some (Full_Field_QuoteCancelType_Tag))
        | "303" -> (Some (Full_Field_QuoteRequestType_Tag))
        | "320" -> (Some (Full_Field_SecurityReqID_Tag))
        | "322" -> (Some (Full_Field_SecurityResponseID_Tag))
        | "323" -> (Some (Full_Field_SecurityResponseType_Tag))
        | "319" -> (Some (Full_Field_RatioQty_Tag))
        | "318" -> (Some (Full_Field_UnderlyingCurrency_Tag))
        | "321" -> (Some (Full_Field_SecurityRequestType_Tag))
        | "324" -> (Some (Full_Field_SecurityStatusReqID_Tag))
        | "325" -> (Some (Full_Field_UnsolicitedIndicator_Tag))
        | "326" -> (Some (Full_Field_SecurityTradingStatus_Tag))
        | "327" -> (Some (Full_Field_HaltReason_Tag))
        | "328" -> (Some (Full_Field_InViewOfCommon_Tag))
        | "329" -> (Some (Full_Field_DueToRelated_Tag))
        | "330" -> (Some (Full_Field_BuyVolume_Tag))
        | "331" -> (Some (Full_Field_SellVolume_Tag))
        | "332" -> (Some (Full_Field_HighPx_Tag))
        | "333" -> (Some (Full_Field_LowPx_Tag))
        | "334" -> (Some (Full_Field_Adjustment_Tag))
        | "162" -> (Some (Full_Field_SettlInstID_Tag))
        | "163" -> (Some (Full_Field_SettlInstTransType_Tag))
        | "214" -> (Some (Full_Field_SettlInstRefID_Tag))
        | "165" -> (Some (Full_Field_SettlInstSource_Tag))
        | "166" -> (Some (Full_Field_SettlLocation_Tag))
        | "169" -> (Some (Full_Field_StandInstDbType_Tag))
        | "170" -> (Some (Full_Field_StandInstDbName_Tag))
        | "171" -> (Some (Full_Field_StandInstDbID_Tag))
        | "172" -> (Some (Full_Field_SettlDeliveryType_Tag))
        | "173" -> (Some (Full_Field_SettlDepositoryCode_Tag))
        | "174" -> (Some (Full_Field_SettlBrkrCode_Tag))
        | "175" -> (Some (Full_Field_SettlInstCode_Tag))
        | "176" -> (Some (Full_Field_SecuritySettlAgentName_Tag))
        | "177" -> (Some (Full_Field_SecuritySettlAgentCode_Tag))
        | "178" -> (Some (Full_Field_SecuritySettlAgentAcctNum_Tag))
        | "179" -> (Some (Full_Field_SecuritySettlAgentAcctName_Tag))
        | "180" -> (Some (Full_Field_SecuritySettlAgentContactName_Tag))
        | "181" -> (Some (Full_Field_SecuritySettlAgentContactPhone_Tag))
        | "182" -> (Some (Full_Field_CashSettlAgentName_Tag))
        | "183" -> (Some (Full_Field_CashSettlAgentCode_Tag))
        | "184" -> (Some (Full_Field_CashSettlAgentAcctNum_Tag))
        | "185" -> (Some (Full_Field_CashSettlAgentAcctName_Tag))
        | "186" -> (Some (Full_Field_CashSettlAgentContactName_Tag))
        | "187" -> (Some (Full_Field_CashSettlAgentContactPhone_Tag))
        | "335" -> (Some (Full_Field_TradSesReqID_Tag))
        | "338" -> (Some (Full_Field_TradSesMethod_Tag))
        | "339" -> (Some (Full_Field_TradSesMode_Tag))
        | "340" -> (Some (Full_Field_TradSesStatus_Tag))
        | "341" -> (Some (Full_Field_TradSesStartTime_Tag))
        | "342" -> (Some (Full_Field_TradSesOpenTime_Tag))
        | "343" -> (Some (Full_Field_TradSesPreCloseTime_Tag))
        | "344" -> (Some (Full_Field_TradSesCloseTime_Tag))
        | "345" -> (Some (Full_Field_TradSesEndTime_Tag))
        | _ -> (None)
    )
;;
