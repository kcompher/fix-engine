(* Aesthetic Integration copyright 2017 *)

type full_app_msg_tag =
    | Full_Msg_Advertisement_Tag 
    | Full_Msg_AllocationInstruction_Tag 
    | Full_Msg_AllocationInstructionAck_Tag 
    | Full_Msg_AllocationReport_Tag 
    | Full_Msg_AllocationReportAck_Tag 
    | Full_Msg_AssignmentReport_Tag 
    | Full_Msg_BidRequest_Tag 
    | Full_Msg_BidResponse_Tag 
    | Full_Msg_CollateralAssignment_Tag 
    | Full_Msg_CollateralInquiry_Tag 
    | Full_Msg_CollateralInquiryAck_Tag 
    | Full_Msg_CollateralReport_Tag 
    | Full_Msg_CollateralRequest_Tag 
    | Full_Msg_CollateralResponse_Tag 
    | Full_Msg_Confirmation_Tag 
    | Full_Msg_ConfirmationAck_Tag 
    | Full_Msg_ConfirmationRequest_Tag 
    | Full_Msg_CrossOrderCancelReplaceRequest_Tag 
    | Full_Msg_CrossOrderCancelRequest_Tag 
    | Full_Msg_DerivativeSecurityList_Tag 
    | Full_Msg_DerivativeSecurityListRequest_Tag 
    | Full_Msg_DontKnowTrade_Tag 
    | Full_Msg_Email_Tag 
    | Full_Msg_ExecutionReport_Tag 
    | Full_Msg_IOI_Tag 
    | Full_Msg_ListCancelRequest_Tag 
    | Full_Msg_ListExecute_Tag 
    | Full_Msg_ListStatus_Tag 
    | Full_Msg_ListStatusRequest_Tag 
    | Full_Msg_ListStrikePrice_Tag 
    | Full_Msg_MarketDataIncrementalRefresh_Tag 
    | Full_Msg_MarketDataRequest_Tag 
    | Full_Msg_MarketDataRequestReject_Tag 
    | Full_Msg_MarketDataSnapshotFullRefresh_Tag 
    | Full_Msg_MassQuote_Tag 
    | Full_Msg_MassQuoteAcknowledgement_Tag 
    | Full_Msg_MultilegOrderCancelReplace_Tag 
    | Full_Msg_NetworkCounterpartySystemStatusRequest_Tag 
    | Full_Msg_NetworkCounterpartySystemStatusResponse_Tag 
    | Full_Msg_NewOrderCross_Tag 
    | Full_Msg_NewOrderList_Tag 
    | Full_Msg_NewOrderMultileg_Tag 
    | Full_Msg_NewOrderSingle_Tag 
    | Full_Msg_News_Tag 
    | Full_Msg_OrderCancelReject_Tag 
    | Full_Msg_OrderCancelReplaceRequest_Tag 
    | Full_Msg_OrderCancelRequest_Tag 
    | Full_Msg_OrderMassCancelReport_Tag 
    | Full_Msg_OrderMassCancelRequest_Tag 
    | Full_Msg_OrderMassStatusRequest_Tag 
    | Full_Msg_OrderStatusRequest_Tag 
    | Full_Msg_PositionMaintenanceReport_Tag 
    | Full_Msg_PositionMaintenanceRequest_Tag 
    | Full_Msg_PositionReport_Tag 
    | Full_Msg_Quote_Tag 
    | Full_Msg_QuoteCancel_Tag 
    | Full_Msg_QuoteRequest_Tag 
    | Full_Msg_QuoteRequestReject_Tag 
    | Full_Msg_QuoteResponse_Tag 
    | Full_Msg_QuoteStatusReport_Tag 
    | Full_Msg_QuoteStatusRequest_Tag 
    | Full_Msg_RFQRequest_Tag 
    | Full_Msg_RegistrationInstructions_Tag 
    | Full_Msg_RegistrationInstructionsResponse_Tag 
    | Full_Msg_RequestForPositions_Tag 
    | Full_Msg_RequestForPositionsAck_Tag 
    | Full_Msg_SecurityDefinition_Tag 
    | Full_Msg_SecurityDefinitionRequest_Tag 
    | Full_Msg_SecurityList_Tag 
    | Full_Msg_SecurityListRequest_Tag 
    | Full_Msg_SecurityStatus_Tag 
    | Full_Msg_SecurityStatusRequest_Tag 
    | Full_Msg_SecurityTypeRequest_Tag 
    | Full_Msg_SecurityTypes_Tag 
    | Full_Msg_SettlementInstructionRequest_Tag 
    | Full_Msg_SettlementInstructions_Tag 
    | Full_Msg_TradeCaptureReport_Tag 
    | Full_Msg_TradeCaptureReportAck_Tag 
    | Full_Msg_TradeCaptureReportRequest_Tag 
    | Full_Msg_TradeCaptureReportRequestAck_Tag 
    | Full_Msg_TradingSessionStatus_Tag 
    | Full_Msg_TradingSessionStatusRequest_Tag 
    | Full_Msg_UserRequest_Tag 
    | Full_Msg_UserResponse_Tag 
;;

type full_app_field_tag =
    | Full_Field_AdvId_Tag 
    | Full_Field_AdvTransType_Tag 
    | Full_Field_AdvRefID_Tag 
    | Full_Field_AdvSide_Tag 
    | Full_Field_Quantity_Tag 
    | Full_Field_QtyType_Tag 
    | Full_Field_Price_Tag 
    | Full_Field_Currency_Tag 
    | Full_Field_TradeDate_Tag 
    | Full_Field_TransactTime_Tag 
    | Full_Field_Text_Tag 
    | Full_Field_EncodedTextLen_Tag 
    | Full_Field_EncodedText_Tag 
    | Full_Field_URLLink_Tag 
    | Full_Field_LastMkt_Tag 
    | Full_Field_TradingSessionID_Tag 
    | Full_Field_TradingSessionSubID_Tag 
    | Full_Field_Symbol_Tag 
    | Full_Field_SymbolSfx_Tag 
    | Full_Field_SecurityID_Tag 
    | Full_Field_SecurityIDSource_Tag 
    | Full_Field_Product_Tag 
    | Full_Field_CFICode_Tag 
    | Full_Field_SecurityType_Tag 
    | Full_Field_SecuritySubType_Tag 
    | Full_Field_MaturityMonthYear_Tag 
    | Full_Field_MaturityDate_Tag 
    | Full_Field_CouponPaymentDate_Tag 
    | Full_Field_IssueDate_Tag 
    | Full_Field_RepoCollateralSecurityType_Tag 
    | Full_Field_RepurchaseTerm_Tag 
    | Full_Field_RepurchaseRate_Tag 
    | Full_Field_Factor_Tag 
    | Full_Field_CreditRating_Tag 
    | Full_Field_InstrRegistry_Tag 
    | Full_Field_CountryOfIssue_Tag 
    | Full_Field_StateOrProvinceOfIssue_Tag 
    | Full_Field_LocaleOfIssue_Tag 
    | Full_Field_RedemptionDate_Tag 
    | Full_Field_StrikePrice_Tag 
    | Full_Field_StrikeCurrency_Tag 
    | Full_Field_OptAttribute_Tag 
    | Full_Field_ContractMultiplier_Tag 
    | Full_Field_CouponRate_Tag 
    | Full_Field_SecurityExchange_Tag 
    | Full_Field_Issuer_Tag 
    | Full_Field_EncodedIssuerLen_Tag 
    | Full_Field_EncodedIssuer_Tag 
    | Full_Field_SecurityDesc_Tag 
    | Full_Field_EncodedSecurityDescLen_Tag 
    | Full_Field_EncodedSecurityDesc_Tag 
    | Full_Field_Pool_Tag 
    | Full_Field_ContractSettlMonth_Tag 
    | Full_Field_CPProgram_Tag 
    | Full_Field_CPRegType_Tag 
    | Full_Field_DatedDate_Tag 
    | Full_Field_InterestAccrualDate_Tag 
    | Full_Field_NoSecurityAltID_Tag 
    | Full_Field_SecurityAltID_Tag 
    | Full_Field_SecurityAltIDSource_Tag 
    | Full_Field_NoEvents_Tag 
    | Full_Field_EventType_Tag 
    | Full_Field_EventDate_Tag 
    | Full_Field_EventPx_Tag 
    | Full_Field_EventText_Tag 
    | Full_Field_NoLegs_Tag 
    | Full_Field_LegSymbol_Tag 
    | Full_Field_LegSymbolSfx_Tag 
    | Full_Field_LegSecurityID_Tag 
    | Full_Field_LegSecurityIDSource_Tag 
    | Full_Field_LegProduct_Tag 
    | Full_Field_LegCFICode_Tag 
    | Full_Field_LegSecurityType_Tag 
    | Full_Field_LegSecuritySubType_Tag 
    | Full_Field_LegMaturityMonthYear_Tag 
    | Full_Field_LegMaturityDate_Tag 
    | Full_Field_LegCouponPaymentDate_Tag 
    | Full_Field_LegIssueDate_Tag 
    | Full_Field_LegRepoCollateralSecurityType_Tag 
    | Full_Field_LegRepurchaseTerm_Tag 
    | Full_Field_LegRepurchaseRate_Tag 
    | Full_Field_LegFactor_Tag 
    | Full_Field_LegCreditRating_Tag 
    | Full_Field_LegInstrRegistry_Tag 
    | Full_Field_LegCountryOfIssue_Tag 
    | Full_Field_LegStateOrProvinceOfIssue_Tag 
    | Full_Field_LegLocaleOfIssue_Tag 
    | Full_Field_LegRedemptionDate_Tag 
    | Full_Field_LegStrikePrice_Tag 
    | Full_Field_LegStrikeCurrency_Tag 
    | Full_Field_LegOptAttribute_Tag 
    | Full_Field_LegContractMultiplier_Tag 
    | Full_Field_LegCouponRate_Tag 
    | Full_Field_LegSecurityExchange_Tag 
    | Full_Field_LegIssuer_Tag 
    | Full_Field_EncodedLegIssuerLen_Tag 
    | Full_Field_EncodedLegIssuer_Tag 
    | Full_Field_LegSecurityDesc_Tag 
    | Full_Field_EncodedLegSecurityDescLen_Tag 
    | Full_Field_EncodedLegSecurityDesc_Tag 
    | Full_Field_LegRatioQty_Tag 
    | Full_Field_LegSide_Tag 
    | Full_Field_LegCurrency_Tag 
    | Full_Field_LegPool_Tag 
    | Full_Field_LegDatedDate_Tag 
    | Full_Field_LegContractSettlMonth_Tag 
    | Full_Field_LegInterestAccrualDate_Tag 
    | Full_Field_NoLegSecurityAltID_Tag 
    | Full_Field_LegSecurityAltID_Tag 
    | Full_Field_LegSecurityAltIDSource_Tag 
    | Full_Field_NoUnderlyings_Tag 
    | Full_Field_UnderlyingSymbol_Tag 
    | Full_Field_UnderlyingSymbolSfx_Tag 
    | Full_Field_UnderlyingSecurityID_Tag 
    | Full_Field_UnderlyingSecurityIDSource_Tag 
    | Full_Field_UnderlyingProduct_Tag 
    | Full_Field_UnderlyingCFICode_Tag 
    | Full_Field_UnderlyingSecurityType_Tag 
    | Full_Field_UnderlyingSecuritySubType_Tag 
    | Full_Field_UnderlyingMaturityMonthYear_Tag 
    | Full_Field_UnderlyingMaturityDate_Tag 
    | Full_Field_UnderlyingCouponPaymentDate_Tag 
    | Full_Field_UnderlyingIssueDate_Tag 
    | Full_Field_UnderlyingRepoCollateralSecurityType_Tag 
    | Full_Field_UnderlyingRepurchaseTerm_Tag 
    | Full_Field_UnderlyingRepurchaseRate_Tag 
    | Full_Field_UnderlyingFactor_Tag 
    | Full_Field_UnderlyingCreditRating_Tag 
    | Full_Field_UnderlyingInstrRegistry_Tag 
    | Full_Field_UnderlyingCountryOfIssue_Tag 
    | Full_Field_UnderlyingStateOrProvinceOfIssue_Tag 
    | Full_Field_UnderlyingLocaleOfIssue_Tag 
    | Full_Field_UnderlyingRedemptionDate_Tag 
    | Full_Field_UnderlyingStrikePrice_Tag 
    | Full_Field_UnderlyingStrikeCurrency_Tag 
    | Full_Field_UnderlyingOptAttribute_Tag 
    | Full_Field_UnderlyingContractMultiplier_Tag 
    | Full_Field_UnderlyingCouponRate_Tag 
    | Full_Field_UnderlyingSecurityExchange_Tag 
    | Full_Field_UnderlyingIssuer_Tag 
    | Full_Field_EncodedUnderlyingIssuerLen_Tag 
    | Full_Field_EncodedUnderlyingIssuer_Tag 
    | Full_Field_UnderlyingSecurityDesc_Tag 
    | Full_Field_EncodedUnderlyingSecurityDescLen_Tag 
    | Full_Field_EncodedUnderlyingSecurityDesc_Tag 
    | Full_Field_UnderlyingCPProgram_Tag 
    | Full_Field_UnderlyingCPRegType_Tag 
    | Full_Field_UnderlyingCurrency_Tag 
    | Full_Field_UnderlyingQty_Tag 
    | Full_Field_UnderlyingPx_Tag 
    | Full_Field_UnderlyingDirtyPrice_Tag 
    | Full_Field_UnderlyingEndPrice_Tag 
    | Full_Field_UnderlyingStartValue_Tag 
    | Full_Field_UnderlyingCurrentValue_Tag 
    | Full_Field_UnderlyingEndValue_Tag 
    | Full_Field_NoUnderlyingSecurityAltID_Tag 
    | Full_Field_UnderlyingSecurityAltID_Tag 
    | Full_Field_UnderlyingSecurityAltIDSource_Tag 
    | Full_Field_NoUnderlyingStips_Tag 
    | Full_Field_UnderlyingStipType_Tag 
    | Full_Field_UnderlyingStipValue_Tag 
    | Full_Field_AllocID_Tag 
    | Full_Field_AllocTransType_Tag 
    | Full_Field_AllocType_Tag 
    | Full_Field_SecondaryAllocID_Tag 
    | Full_Field_RefAllocID_Tag 
    | Full_Field_AllocCancReplaceReason_Tag 
    | Full_Field_AllocIntermedReqType_Tag 
    | Full_Field_AllocLinkID_Tag 
    | Full_Field_AllocLinkType_Tag 
    | Full_Field_BookingRefID_Tag 
    | Full_Field_AllocNoOrdersType_Tag 
    | Full_Field_PreviouslyReported_Tag 
    | Full_Field_ReversalIndicator_Tag 
    | Full_Field_MatchType_Tag 
    | Full_Field_Side_Tag 
    | Full_Field_TradeOriginationDate_Tag 
    | Full_Field_PriceType_Tag 
    | Full_Field_AvgPx_Tag 
    | Full_Field_AvgParPx_Tag 
    | Full_Field_AvgPxPrecision_Tag 
    | Full_Field_SettlType_Tag 
    | Full_Field_SettlDate_Tag 
    | Full_Field_BookingType_Tag 
    | Full_Field_GrossTradeAmt_Tag 
    | Full_Field_Concession_Tag 
    | Full_Field_TotalTakedown_Tag 
    | Full_Field_NetMoney_Tag 
    | Full_Field_PositionEffect_Tag 
    | Full_Field_AutoAcceptIndicator_Tag 
    | Full_Field_NumDaysInterest_Tag 
    | Full_Field_AccruedInterestRate_Tag 
    | Full_Field_AccruedInterestAmt_Tag 
    | Full_Field_TotalAccruedInterestAmt_Tag 
    | Full_Field_InterestAtMaturity_Tag 
    | Full_Field_EndAccruedInterestAmt_Tag 
    | Full_Field_StartCash_Tag 
    | Full_Field_EndCash_Tag 
    | Full_Field_LegalConfirm_Tag 
    | Full_Field_TotNoAllocs_Tag 
    | Full_Field_LastFragment_Tag 
    | Full_Field_NoOrders_Tag 
    | Full_Field_ClOrdID_Tag 
    | Full_Field_OrderID_Tag 
    | Full_Field_SecondaryOrderID_Tag 
    | Full_Field_SecondaryClOrdID_Tag 
    | Full_Field_ListID_Tag 
    | Full_Field_OrderQty_Tag 
    | Full_Field_OrderAvgPx_Tag 
    | Full_Field_OrderBookingQty_Tag 
    | Full_Field_NoNested2PartyIDs_Tag 
    | Full_Field_Nested2PartyID_Tag 
    | Full_Field_Nested2PartyIDSource_Tag 
    | Full_Field_Nested2PartyRole_Tag 
    | Full_Field_NoNested2PartySubIDs_Tag 
    | Full_Field_Nested2PartySubID_Tag 
    | Full_Field_Nested2PartySubIDType_Tag 
    | Full_Field_NoExecs_Tag 
    | Full_Field_LastQty_Tag 
    | Full_Field_ExecID_Tag 
    | Full_Field_SecondaryExecID_Tag 
    | Full_Field_LastPx_Tag 
    | Full_Field_LastParPx_Tag 
    | Full_Field_LastCapacity_Tag 
    | Full_Field_DeliveryForm_Tag 
    | Full_Field_PctAtRisk_Tag 
    | Full_Field_NoInstrAttrib_Tag 
    | Full_Field_InstrAttribType_Tag 
    | Full_Field_InstrAttribValue_Tag 
    | Full_Field_AgreementDesc_Tag 
    | Full_Field_AgreementID_Tag 
    | Full_Field_AgreementDate_Tag 
    | Full_Field_AgreementCurrency_Tag 
    | Full_Field_TerminationType_Tag 
    | Full_Field_StartDate_Tag 
    | Full_Field_EndDate_Tag 
    | Full_Field_DeliveryType_Tag 
    | Full_Field_MarginRatio_Tag 
    | Full_Field_Spread_Tag 
    | Full_Field_BenchmarkCurveCurrency_Tag 
    | Full_Field_BenchmarkCurveName_Tag 
    | Full_Field_BenchmarkCurvePoint_Tag 
    | Full_Field_BenchmarkPrice_Tag 
    | Full_Field_BenchmarkPriceType_Tag 
    | Full_Field_BenchmarkSecurityID_Tag 
    | Full_Field_BenchmarkSecurityIDSource_Tag 
    | Full_Field_NoPartyIDs_Tag 
    | Full_Field_PartyID_Tag 
    | Full_Field_PartyIDSource_Tag 
    | Full_Field_PartyRole_Tag 
    | Full_Field_NoPartySubIDs_Tag 
    | Full_Field_PartySubID_Tag 
    | Full_Field_PartySubIDType_Tag 
    | Full_Field_NoStipulations_Tag 
    | Full_Field_StipulationType_Tag 
    | Full_Field_StipulationValue_Tag 
    | Full_Field_YieldType_Tag 
    | Full_Field_Yield_Tag 
    | Full_Field_YieldCalcDate_Tag 
    | Full_Field_YieldRedemptionDate_Tag 
    | Full_Field_YieldRedemptionPrice_Tag 
    | Full_Field_YieldRedemptionPriceType_Tag 
    | Full_Field_NoAllocs_Tag 
    | Full_Field_AllocAccount_Tag 
    | Full_Field_AllocAcctIDSource_Tag 
    | Full_Field_MatchStatus_Tag 
    | Full_Field_AllocPrice_Tag 
    | Full_Field_AllocQty_Tag 
    | Full_Field_IndividualAllocID_Tag 
    | Full_Field_ProcessCode_Tag 
    | Full_Field_NotifyBrokerOfCredit_Tag 
    | Full_Field_AllocHandlInst_Tag 
    | Full_Field_AllocText_Tag 
    | Full_Field_EncodedAllocTextLen_Tag 
    | Full_Field_EncodedAllocText_Tag 
    | Full_Field_AllocAvgPx_Tag 
    | Full_Field_AllocNetMoney_Tag 
    | Full_Field_SettlCurrAmt_Tag 
    | Full_Field_AllocSettlCurrAmt_Tag 
    | Full_Field_SettlCurrency_Tag 
    | Full_Field_AllocSettlCurrency_Tag 
    | Full_Field_SettlCurrFxRate_Tag 
    | Full_Field_SettlCurrFxRateCalc_Tag 
    | Full_Field_AllocAccruedInterestAmt_Tag 
    | Full_Field_AllocInterestAtMaturity_Tag 
    | Full_Field_AllocSettlInstType_Tag 
    | Full_Field_NoNestedPartyIDs_Tag 
    | Full_Field_NestedPartyID_Tag 
    | Full_Field_NestedPartyIDSource_Tag 
    | Full_Field_NestedPartyRole_Tag 
    | Full_Field_NoNestedPartySubIDs_Tag 
    | Full_Field_NestedPartySubID_Tag 
    | Full_Field_NestedPartySubIDType_Tag 
    | Full_Field_Commission_Tag 
    | Full_Field_CommType_Tag 
    | Full_Field_CommCurrency_Tag 
    | Full_Field_FundRenewWaiv_Tag 
    | Full_Field_NoMiscFees_Tag 
    | Full_Field_MiscFeeAmt_Tag 
    | Full_Field_MiscFeeCurr_Tag 
    | Full_Field_MiscFeeType_Tag 
    | Full_Field_MiscFeeBasis_Tag 
    | Full_Field_NoClearingInstructions_Tag 
    | Full_Field_ClearingInstruction_Tag 
    | Full_Field_SettlDeliveryType_Tag 
    | Full_Field_StandInstDbType_Tag 
    | Full_Field_StandInstDbName_Tag 
    | Full_Field_StandInstDbID_Tag 
    | Full_Field_NoDlvyInst_Tag 
    | Full_Field_SettlInstSource_Tag 
    | Full_Field_DlvyInstType_Tag 
    | Full_Field_NoSettlPartyIDs_Tag 
    | Full_Field_SettlPartyID_Tag 
    | Full_Field_SettlPartyIDSource_Tag 
    | Full_Field_SettlPartyRole_Tag 
    | Full_Field_NoSettlPartySubIDs_Tag 
    | Full_Field_SettlPartySubID_Tag 
    | Full_Field_SettlPartySubIDType_Tag 
    | Full_Field_AllocStatus_Tag 
    | Full_Field_AllocRejCode_Tag 
    | Full_Field_IndividualAllocRejCode_Tag 
    | Full_Field_AllocReportID_Tag 
    | Full_Field_AllocReportRefID_Tag 
    | Full_Field_AllocReportType_Tag 
    | Full_Field_AsgnRptID_Tag 
    | Full_Field_TotNumAssignmentReports_Tag 
    | Full_Field_LastRptRequested_Tag 
    | Full_Field_Account_Tag 
    | Full_Field_AccountType_Tag 
    | Full_Field_ThresholdAmount_Tag 
    | Full_Field_SettlPrice_Tag 
    | Full_Field_SettlPriceType_Tag 
    | Full_Field_UnderlyingSettlPrice_Tag 
    | Full_Field_ExpireDate_Tag 
    | Full_Field_AssignmentMethod_Tag 
    | Full_Field_AssignmentUnit_Tag 
    | Full_Field_OpenInterest_Tag 
    | Full_Field_ExerciseMethod_Tag 
    | Full_Field_SettlSessID_Tag 
    | Full_Field_SettlSessSubID_Tag 
    | Full_Field_ClearingBusinessDate_Tag 
    | Full_Field_NoPositions_Tag 
    | Full_Field_PosType_Tag 
    | Full_Field_LongQty_Tag 
    | Full_Field_ShortQty_Tag 
    | Full_Field_PosQtyStatus_Tag 
    | Full_Field_NoPosAmt_Tag 
    | Full_Field_PosAmtType_Tag 
    | Full_Field_PosAmt_Tag 
    | Full_Field_BidID_Tag 
    | Full_Field_ClientBidID_Tag 
    | Full_Field_BidRequestTransType_Tag 
    | Full_Field_ListName_Tag 
    | Full_Field_TotNoRelatedSym_Tag 
    | Full_Field_BidType_Tag 
    | Full_Field_NumTickets_Tag 
    | Full_Field_SideValue1_Tag 
    | Full_Field_SideValue2_Tag 
    | Full_Field_LiquidityIndType_Tag 
    | Full_Field_WtAverageLiquidity_Tag 
    | Full_Field_ExchangeForPhysical_Tag 
    | Full_Field_OutMainCntryUIndex_Tag 
    | Full_Field_CrossPercent_Tag 
    | Full_Field_ProgRptReqs_Tag 
    | Full_Field_ProgPeriodInterval_Tag 
    | Full_Field_IncTaxInd_Tag 
    | Full_Field_ForexReq_Tag 
    | Full_Field_NumBidders_Tag 
    | Full_Field_BidTradeType_Tag 
    | Full_Field_BasisPxType_Tag 
    | Full_Field_StrikeTime_Tag 
    | Full_Field_NoBidDescriptors_Tag 
    | Full_Field_BidDescriptorType_Tag 
    | Full_Field_BidDescriptor_Tag 
    | Full_Field_SideValueInd_Tag 
    | Full_Field_LiquidityValue_Tag 
    | Full_Field_LiquidityNumSecurities_Tag 
    | Full_Field_LiquidityPctLow_Tag 
    | Full_Field_LiquidityPctHigh_Tag 
    | Full_Field_EFPTrackingError_Tag 
    | Full_Field_FairValue_Tag 
    | Full_Field_OutsideIndexPct_Tag 
    | Full_Field_ValueOfFutures_Tag 
    | Full_Field_NoBidComponents_Tag 
    | Full_Field_NetGrossInd_Tag 
    | Full_Field_AcctIDSource_Tag 
    | Full_Field_Country_Tag 
    | Full_Field_CollAsgnID_Tag 
    | Full_Field_CollReqID_Tag 
    | Full_Field_CollAsgnReason_Tag 
    | Full_Field_CollAsgnTransType_Tag 
    | Full_Field_CollAsgnRefID_Tag 
    | Full_Field_ExpireTime_Tag 
    | Full_Field_MarginExcess_Tag 
    | Full_Field_TotalNetValue_Tag 
    | Full_Field_CashOutstanding_Tag 
    | Full_Field_NoTrades_Tag 
    | Full_Field_TradeReportID_Tag 
    | Full_Field_SecondaryTradeReportID_Tag 
    | Full_Field_CollAction_Tag 
    | Full_Field_NoTrdRegTimestamps_Tag 
    | Full_Field_TrdRegTimestamp_Tag 
    | Full_Field_TrdRegTimestampType_Tag 
    | Full_Field_TrdRegTimestampOrigin_Tag 
    | Full_Field_CollInquiryID_Tag 
    | Full_Field_SubscriptionRequestType_Tag 
    | Full_Field_ResponseTransportType_Tag 
    | Full_Field_ResponseDestination_Tag 
    | Full_Field_NoCollInquiryQualifier_Tag 
    | Full_Field_CollInquiryQualifier_Tag 
    | Full_Field_CollInquiryStatus_Tag 
    | Full_Field_CollInquiryResult_Tag 
    | Full_Field_TotNumReports_Tag 
    | Full_Field_CollRptID_Tag 
    | Full_Field_CollStatus_Tag 
    | Full_Field_CollRespID_Tag 
    | Full_Field_CollAsgnRespType_Tag 
    | Full_Field_CollAsgnRejectReason_Tag 
    | Full_Field_ConfirmID_Tag 
    | Full_Field_ConfirmRefID_Tag 
    | Full_Field_ConfirmReqID_Tag 
    | Full_Field_ConfirmTransType_Tag 
    | Full_Field_ConfirmType_Tag 
    | Full_Field_CopyMsgIndicator_Tag 
    | Full_Field_ConfirmStatus_Tag 
    | Full_Field_AllocAccountType_Tag 
    | Full_Field_ReportedPx_Tag 
    | Full_Field_ExDate_Tag 
    | Full_Field_MaturityNetMoney_Tag 
    | Full_Field_SharedCommission_Tag 
    | Full_Field_NoCapacities_Tag 
    | Full_Field_OrderCapacity_Tag 
    | Full_Field_OrderRestrictions_Tag 
    | Full_Field_OrderCapacityQty_Tag 
    | Full_Field_AffirmStatus_Tag 
    | Full_Field_ConfirmRejReason_Tag 
    | Full_Field_CrossID_Tag 
    | Full_Field_OrigCrossID_Tag 
    | Full_Field_CrossType_Tag 
    | Full_Field_CrossPrioritization_Tag 
    | Full_Field_HandlInst_Tag 
    | Full_Field_ExecInst_Tag 
    | Full_Field_MinQty_Tag 
    | Full_Field_MaxFloor_Tag 
    | Full_Field_ExDestination_Tag 
    | Full_Field_PrevClosePx_Tag 
    | Full_Field_LocateReqd_Tag 
    | Full_Field_OrdType_Tag 
    | Full_Field_StopPx_Tag 
    | Full_Field_ComplianceID_Tag 
    | Full_Field_IOIID_Tag 
    | Full_Field_QuoteID_Tag 
    | Full_Field_TimeInForce_Tag 
    | Full_Field_EffectiveTime_Tag 
    | Full_Field_GTBookingInst_Tag 
    | Full_Field_MaxShow_Tag 
    | Full_Field_TargetStrategy_Tag 
    | Full_Field_TargetStrategyParameters_Tag 
    | Full_Field_ParticipationRate_Tag 
    | Full_Field_CancellationRights_Tag 
    | Full_Field_MoneyLaunderingStatus_Tag 
    | Full_Field_RegistID_Tag 
    | Full_Field_Designation_Tag 
    | Full_Field_NoSides_Tag 
    | Full_Field_ClOrdLinkID_Tag 
    | Full_Field_DayBookingInst_Tag 
    | Full_Field_BookingUnit_Tag 
    | Full_Field_PreallocMethod_Tag 
    | Full_Field_CustOrderCapacity_Tag 
    | Full_Field_CoveredOrUncovered_Tag 
    | Full_Field_CashMargin_Tag 
    | Full_Field_ClearingFeeIndicator_Tag 
    | Full_Field_SolicitedFlag_Tag 
    | Full_Field_SideComplianceID_Tag 
    | Full_Field_CashOrderQty_Tag 
    | Full_Field_OrderPercent_Tag 
    | Full_Field_RoundingDirection_Tag 
    | Full_Field_RoundingModulus_Tag 
    | Full_Field_NoTradingSessions_Tag 
    | Full_Field_PegOffsetValue_Tag 
    | Full_Field_PegMoveType_Tag 
    | Full_Field_PegOffsetType_Tag 
    | Full_Field_PegLimitType_Tag 
    | Full_Field_PegRoundDirection_Tag 
    | Full_Field_PegScope_Tag 
    | Full_Field_DiscretionInst_Tag 
    | Full_Field_DiscretionOffsetValue_Tag 
    | Full_Field_DiscretionMoveType_Tag 
    | Full_Field_DiscretionOffsetType_Tag 
    | Full_Field_DiscretionLimitType_Tag 
    | Full_Field_DiscretionRoundDirection_Tag 
    | Full_Field_DiscretionScope_Tag 
    | Full_Field_OrigClOrdID_Tag 
    | Full_Field_OrigOrdModTime_Tag 
    | Full_Field_SecurityReqID_Tag 
    | Full_Field_SecurityResponseID_Tag 
    | Full_Field_SecurityRequestResult_Tag 
    | Full_Field_NoRelatedSym_Tag 
    | Full_Field_ExpirationCycle_Tag 
    | Full_Field_SecurityListRequestType_Tag 
    | Full_Field_DKReason_Tag 
    | Full_Field_EmailThreadID_Tag 
    | Full_Field_EmailType_Tag 
    | Full_Field_OrigTime_Tag 
    | Full_Field_Subject_Tag 
    | Full_Field_EncodedSubjectLen_Tag 
    | Full_Field_EncodedSubject_Tag 
    | Full_Field_RawDataLength_Tag 
    | Full_Field_RawData_Tag 
    | Full_Field_NoRoutingIDs_Tag 
    | Full_Field_RoutingType_Tag 
    | Full_Field_RoutingID_Tag 
    | Full_Field_NoLinesOfText_Tag 
    | Full_Field_QuoteRespID_Tag 
    | Full_Field_OrdStatusReqID_Tag 
    | Full_Field_MassStatusReqID_Tag 
    | Full_Field_ExecRefID_Tag 
    | Full_Field_ExecType_Tag 
    | Full_Field_OrdStatus_Tag 
    | Full_Field_WorkingIndicator_Tag 
    | Full_Field_OrdRejReason_Tag 
    | Full_Field_ExecRestatementReason_Tag 
    | Full_Field_PeggedPrice_Tag 
    | Full_Field_DiscretionPrice_Tag 
    | Full_Field_TargetStrategyPerformance_Tag 
    | Full_Field_UnderlyingLastQty_Tag 
    | Full_Field_UnderlyingLastPx_Tag 
    | Full_Field_LastSpotRate_Tag 
    | Full_Field_LastForwardPoints_Tag 
    | Full_Field_TimeBracket_Tag 
    | Full_Field_LeavesQty_Tag 
    | Full_Field_CumQty_Tag 
    | Full_Field_DayOrderQty_Tag 
    | Full_Field_DayCumQty_Tag 
    | Full_Field_DayAvgPx_Tag 
    | Full_Field_ReportToExch_Tag 
    | Full_Field_TradedFlatSwitch_Tag 
    | Full_Field_BasisFeatureDate_Tag 
    | Full_Field_BasisFeaturePrice_Tag 
    | Full_Field_SettlDate2_Tag 
    | Full_Field_OrderQty2_Tag 
    | Full_Field_LastForwardPoints2_Tag 
    | Full_Field_MultiLegReportingType_Tag 
    | Full_Field_TransBkdTime_Tag 
    | Full_Field_ExecValuationPoint_Tag 
    | Full_Field_ExecPriceType_Tag 
    | Full_Field_ExecPriceAdjustment_Tag 
    | Full_Field_PriorityIndicator_Tag 
    | Full_Field_PriceImprovement_Tag 
    | Full_Field_LastLiquidityInd_Tag 
    | Full_Field_NoContraBrokers_Tag 
    | Full_Field_ContraBroker_Tag 
    | Full_Field_ContraTrader_Tag 
    | Full_Field_ContraTradeQty_Tag 
    | Full_Field_ContraTradeTime_Tag 
    | Full_Field_ContraLegRefID_Tag 
    | Full_Field_NoContAmts_Tag 
    | Full_Field_ContAmtType_Tag 
    | Full_Field_ContAmtValue_Tag 
    | Full_Field_ContAmtCurr_Tag 
    | Full_Field_LegQty_Tag 
    | Full_Field_LegSwapType_Tag 
    | Full_Field_LegPositionEffect_Tag 
    | Full_Field_LegCoveredOrUncovered_Tag 
    | Full_Field_LegRefID_Tag 
    | Full_Field_LegPrice_Tag 
    | Full_Field_LegSettlType_Tag 
    | Full_Field_LegSettlDate_Tag 
    | Full_Field_LegLastPx_Tag 
    | Full_Field_NoLegStipulations_Tag 
    | Full_Field_LegStipulationType_Tag 
    | Full_Field_LegStipulationValue_Tag 
    | Full_Field_IOITransType_Tag 
    | Full_Field_IOIRefID_Tag 
    | Full_Field_IOIQty_Tag 
    | Full_Field_ValidUntilTime_Tag 
    | Full_Field_IOIQltyInd_Tag 
    | Full_Field_IOINaturalFlag_Tag 
    | Full_Field_LegIOIQty_Tag 
    | Full_Field_NoIOIQualifiers_Tag 
    | Full_Field_IOIQualifier_Tag 
    | Full_Field_ListStatusType_Tag 
    | Full_Field_NoRpts_Tag 
    | Full_Field_ListOrderStatus_Tag 
    | Full_Field_RptSeq_Tag 
    | Full_Field_ListStatusText_Tag 
    | Full_Field_EncodedListStatusTextLen_Tag 
    | Full_Field_EncodedListStatusText_Tag 
    | Full_Field_TotNoOrders_Tag 
    | Full_Field_CxlQty_Tag 
    | Full_Field_TotNoStrikes_Tag 
    | Full_Field_NoStrikes_Tag 
    | Full_Field_MDReqID_Tag 
    | Full_Field_ApplQueueDepth_Tag 
    | Full_Field_ApplQueueResolution_Tag 
    | Full_Field_NoMDEntries_Tag 
    | Full_Field_MDUpdateAction_Tag 
    | Full_Field_DeleteReason_Tag 
    | Full_Field_MDEntryType_Tag 
    | Full_Field_MDEntryID_Tag 
    | Full_Field_MDEntryRefID_Tag 
    | Full_Field_FinancialStatus_Tag 
    | Full_Field_CorporateAction_Tag 
    | Full_Field_MDEntryPx_Tag 
    | Full_Field_MDEntrySize_Tag 
    | Full_Field_MDEntryDate_Tag 
    | Full_Field_MDEntryTime_Tag 
    | Full_Field_TickDirection_Tag 
    | Full_Field_MDMkt_Tag 
    | Full_Field_QuoteCondition_Tag 
    | Full_Field_TradeCondition_Tag 
    | Full_Field_MDEntryOriginator_Tag 
    | Full_Field_LocationID_Tag 
    | Full_Field_DeskID_Tag 
    | Full_Field_OpenCloseSettlFlag_Tag 
    | Full_Field_SellerDays_Tag 
    | Full_Field_QuoteEntryID_Tag 
    | Full_Field_MDEntryBuyer_Tag 
    | Full_Field_MDEntrySeller_Tag 
    | Full_Field_NumberOfOrders_Tag 
    | Full_Field_MDEntryPositionNo_Tag 
    | Full_Field_Scope_Tag 
    | Full_Field_PriceDelta_Tag 
    | Full_Field_NetChgPrevDay_Tag 
    | Full_Field_MarketDepth_Tag 
    | Full_Field_MDUpdateType_Tag 
    | Full_Field_AggregatedBook_Tag 
    | Full_Field_MDImplicitDelete_Tag 
    | Full_Field_ApplQueueAction_Tag 
    | Full_Field_ApplQueueMax_Tag 
    | Full_Field_NoMDEntryTypes_Tag 
    | Full_Field_MDReqRejReason_Tag 
    | Full_Field_NoAltMDSource_Tag 
    | Full_Field_AltMDSourceID_Tag 
    | Full_Field_QuoteReqID_Tag 
    | Full_Field_QuoteType_Tag 
    | Full_Field_QuoteResponseLevel_Tag 
    | Full_Field_DefBidSize_Tag 
    | Full_Field_DefOfferSize_Tag 
    | Full_Field_NoQuoteSets_Tag 
    | Full_Field_QuoteSetID_Tag 
    | Full_Field_QuoteSetValidUntilTime_Tag 
    | Full_Field_TotNoQuoteEntries_Tag 
    | Full_Field_NoQuoteEntries_Tag 
    | Full_Field_BidPx_Tag 
    | Full_Field_OfferPx_Tag 
    | Full_Field_BidSize_Tag 
    | Full_Field_OfferSize_Tag 
    | Full_Field_BidSpotRate_Tag 
    | Full_Field_OfferSpotRate_Tag 
    | Full_Field_BidForwardPoints_Tag 
    | Full_Field_OfferForwardPoints_Tag 
    | Full_Field_MidPx_Tag 
    | Full_Field_BidYield_Tag 
    | Full_Field_MidYield_Tag 
    | Full_Field_OfferYield_Tag 
    | Full_Field_BidForwardPoints2_Tag 
    | Full_Field_OfferForwardPoints2_Tag 
    | Full_Field_QuoteStatus_Tag 
    | Full_Field_QuoteRejectReason_Tag 
    | Full_Field_QuoteEntryRejectReason_Tag 
    | Full_Field_MultiLegRptTypeReq_Tag 
    | Full_Field_NoNested3PartyIDs_Tag 
    | Full_Field_Nested3PartyID_Tag 
    | Full_Field_Nested3PartyIDSource_Tag 
    | Full_Field_Nested3PartyRole_Tag 
    | Full_Field_NoNested3PartySubIDs_Tag 
    | Full_Field_Nested3PartySubID_Tag 
    | Full_Field_Nested3PartySubIDType_Tag 
    | Full_Field_NoLegAllocs_Tag 
    | Full_Field_LegAllocAccount_Tag 
    | Full_Field_LegIndividualAllocID_Tag 
    | Full_Field_LegAllocQty_Tag 
    | Full_Field_LegAllocAcctIDSource_Tag 
    | Full_Field_LegSettlCurrency_Tag 
    | Full_Field_NetworkRequestType_Tag 
    | Full_Field_NetworkRequestID_Tag 
    | Full_Field_NoCompIDs_Tag 
    | Full_Field_RefCompID_Tag 
    | Full_Field_RefSubID_Tag 
    | Full_Field_NetworkStatusResponseType_Tag 
    | Full_Field_NetworkResponseID_Tag 
    | Full_Field_LastNetworkResponseID_Tag 
    | Full_Field_StatusValue_Tag 
    | Full_Field_StatusText_Tag 
    | Full_Field_ListExecInstType_Tag 
    | Full_Field_ListExecInst_Tag 
    | Full_Field_EncodedListExecInstLen_Tag 
    | Full_Field_EncodedListExecInst_Tag 
    | Full_Field_AllowableOneSidednessPct_Tag 
    | Full_Field_AllowableOneSidednessValue_Tag 
    | Full_Field_AllowableOneSidednessCurr_Tag 
    | Full_Field_ListSeqNo_Tag 
    | Full_Field_SettlInstMode_Tag 
    | Full_Field_Price2_Tag 
    | Full_Field_Urgency_Tag 
    | Full_Field_Headline_Tag 
    | Full_Field_EncodedHeadlineLen_Tag 
    | Full_Field_EncodedHeadline_Tag 
    | Full_Field_CxlRejResponseTo_Tag 
    | Full_Field_CxlRejReason_Tag 
    | Full_Field_MassCancelRequestType_Tag 
    | Full_Field_MassCancelResponse_Tag 
    | Full_Field_MassCancelRejectReason_Tag 
    | Full_Field_TotalAffectedOrders_Tag 
    | Full_Field_NoAffectedOrders_Tag 
    | Full_Field_AffectedOrderID_Tag 
    | Full_Field_AffectedSecondaryOrderID_Tag 
    | Full_Field_MassStatusReqType_Tag 
    | Full_Field_PosMaintRptID_Tag 
    | Full_Field_PosTransType_Tag 
    | Full_Field_PosReqID_Tag 
    | Full_Field_PosMaintAction_Tag 
    | Full_Field_OrigPosReqRefID_Tag 
    | Full_Field_PosMaintStatus_Tag 
    | Full_Field_PosMaintResult_Tag 
    | Full_Field_AdjustmentType_Tag 
    | Full_Field_PosMaintRptRefID_Tag 
    | Full_Field_ContraryInstructionIndicator_Tag 
    | Full_Field_PriorSpreadIndicator_Tag 
    | Full_Field_PosReqType_Tag 
    | Full_Field_TotalNumPosReports_Tag 
    | Full_Field_UnsolicitedIndicator_Tag 
    | Full_Field_PosReqResult_Tag 
    | Full_Field_PriorSettlPrice_Tag 
    | Full_Field_RegistStatus_Tag 
    | Full_Field_DeliveryDate_Tag 
    | Full_Field_UnderlyingSettlPriceType_Tag 
    | Full_Field_MktBidPx_Tag 
    | Full_Field_MktOfferPx_Tag 
    | Full_Field_MinBidSize_Tag 
    | Full_Field_MinOfferSize_Tag 
    | Full_Field_SettlCurrBidFxRate_Tag 
    | Full_Field_SettlCurrOfferFxRate_Tag 
    | Full_Field_NoQuoteQualifiers_Tag 
    | Full_Field_QuoteQualifier_Tag 
    | Full_Field_LegPriceType_Tag 
    | Full_Field_LegBidPx_Tag 
    | Full_Field_LegOfferPx_Tag 
    | Full_Field_LegBenchmarkCurveCurrency_Tag 
    | Full_Field_LegBenchmarkCurveName_Tag 
    | Full_Field_LegBenchmarkCurvePoint_Tag 
    | Full_Field_LegBenchmarkPrice_Tag 
    | Full_Field_LegBenchmarkPriceType_Tag 
    | Full_Field_QuoteCancelType_Tag 
    | Full_Field_RFQReqID_Tag 
    | Full_Field_QuoteRequestType_Tag 
    | Full_Field_QuotePriceType_Tag 
    | Full_Field_QuoteRequestRejectReason_Tag 
    | Full_Field_QuoteRespType_Tag 
    | Full_Field_QuoteStatusReqID_Tag 
    | Full_Field_RegistTransType_Tag 
    | Full_Field_RegistRefID_Tag 
    | Full_Field_RegistAcctType_Tag 
    | Full_Field_TaxAdvantageType_Tag 
    | Full_Field_OwnershipType_Tag 
    | Full_Field_NoRegistDtls_Tag 
    | Full_Field_RegistDtls_Tag 
    | Full_Field_RegistEmail_Tag 
    | Full_Field_MailingDtls_Tag 
    | Full_Field_MailingInst_Tag 
    | Full_Field_OwnerType_Tag 
    | Full_Field_DateOfBirth_Tag 
    | Full_Field_InvestorCountryOfResidence_Tag 
    | Full_Field_NoDistribInsts_Tag 
    | Full_Field_DistribPaymentMethod_Tag 
    | Full_Field_DistribPercentage_Tag 
    | Full_Field_CashDistribCurr_Tag 
    | Full_Field_CashDistribAgentName_Tag 
    | Full_Field_CashDistribAgentCode_Tag 
    | Full_Field_CashDistribAgentAcctNumber_Tag 
    | Full_Field_CashDistribPayRef_Tag 
    | Full_Field_CashDistribAgentAcctName_Tag 
    | Full_Field_RegistRejReasonCode_Tag 
    | Full_Field_RegistRejReasonText_Tag 
    | Full_Field_PosReqStatus_Tag 
    | Full_Field_SecurityResponseType_Tag 
    | Full_Field_RoundLot_Tag 
    | Full_Field_MinTradeVol_Tag 
    | Full_Field_SecurityRequestType_Tag 
    | Full_Field_SecurityStatusReqID_Tag 
    | Full_Field_SecurityTradingStatus_Tag 
    | Full_Field_HaltReason_Tag 
    | Full_Field_InViewOfCommon_Tag 
    | Full_Field_DueToRelated_Tag 
    | Full_Field_BuyVolume_Tag 
    | Full_Field_SellVolume_Tag 
    | Full_Field_HighPx_Tag 
    | Full_Field_LowPx_Tag 
    | Full_Field_Adjustment_Tag 
    | Full_Field_TotNoSecurityTypes_Tag 
    | Full_Field_NoSecurityTypes_Tag 
    | Full_Field_SettlInstReqID_Tag 
    | Full_Field_LastUpdateTime_Tag 
    | Full_Field_SettlInstMsgID_Tag 
    | Full_Field_SettlInstReqRejCode_Tag 
    | Full_Field_NoSettlInst_Tag 
    | Full_Field_SettlInstID_Tag 
    | Full_Field_SettlInstTransType_Tag 
    | Full_Field_SettlInstRefID_Tag 
    | Full_Field_PaymentMethod_Tag 
    | Full_Field_PaymentRef_Tag 
    | Full_Field_CardHolderName_Tag 
    | Full_Field_CardNumber_Tag 
    | Full_Field_CardStartDate_Tag 
    | Full_Field_CardExpDate_Tag 
    | Full_Field_CardIssNum_Tag 
    | Full_Field_PaymentDate_Tag 
    | Full_Field_PaymentRemitterID_Tag 
    | Full_Field_TradeReportTransType_Tag 
    | Full_Field_TradeReportType_Tag 
    | Full_Field_TradeRequestID_Tag 
    | Full_Field_TrdType_Tag 
    | Full_Field_TrdSubType_Tag 
    | Full_Field_SecondaryTrdType_Tag 
    | Full_Field_TransferReason_Tag 
    | Full_Field_TotNumTradeReports_Tag 
    | Full_Field_TradeReportRefID_Tag 
    | Full_Field_SecondaryTradeReportRefID_Tag 
    | Full_Field_TradeLinkID_Tag 
    | Full_Field_TrdMatchID_Tag 
    | Full_Field_UnderlyingTradingSessionID_Tag 
    | Full_Field_UnderlyingTradingSessionSubID_Tag 
    | Full_Field_AvgPxIndicator_Tag 
    | Full_Field_TradeLegRefID_Tag 
    | Full_Field_PublishTrdIndicator_Tag 
    | Full_Field_ShortSaleReason_Tag 
    | Full_Field_OddLot_Tag 
    | Full_Field_TradeInputSource_Tag 
    | Full_Field_TradeInputDevice_Tag 
    | Full_Field_OrderInputDevice_Tag 
    | Full_Field_SideMultiLegReportingType_Tag 
    | Full_Field_ExchangeRule_Tag 
    | Full_Field_TradeAllocIndicator_Tag 
    | Full_Field_TrdRptStatus_Tag 
    | Full_Field_TradeReportRejectReason_Tag 
    | Full_Field_TradeRequestType_Tag 
    | Full_Field_NoDates_Tag 
    | Full_Field_TradeRequestResult_Tag 
    | Full_Field_TradeRequestStatus_Tag 
    | Full_Field_TradSesReqID_Tag 
    | Full_Field_TradSesMethod_Tag 
    | Full_Field_TradSesMode_Tag 
    | Full_Field_TradSesStatus_Tag 
    | Full_Field_TradSesStatusRejReason_Tag 
    | Full_Field_TradSesStartTime_Tag 
    | Full_Field_TradSesOpenTime_Tag 
    | Full_Field_TradSesPreCloseTime_Tag 
    | Full_Field_TradSesCloseTime_Tag 
    | Full_Field_TradSesEndTime_Tag 
    | Full_Field_TotalVolumeTraded_Tag 
    | Full_Field_UserRequestID_Tag 
    | Full_Field_UserRequestType_Tag 
    | Full_Field_Username_Tag 
    | Full_Field_Password_Tag 
    | Full_Field_NewPassword_Tag 
    | Full_Field_UserStatus_Tag 
    | Full_Field_UserStatusText_Tag 
;;
