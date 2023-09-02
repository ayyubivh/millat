import 'dart:convert';

OrdersById ordersByIdFromJson(String str) =>
    OrdersById.fromJson(json.decode(str));

String ordersByIdToJson(OrdersById data) => json.encode(data.toJson());

class OrdersById {
  int status;
  String message;
  String error;
  Result result;

  OrdersById({
    required this.status,
    required this.message,
    required this.error,
    required this.result,
  });

  factory OrdersById.fromJson(Map<String, dynamic> json) => OrdersById(
        status: json["status"],
        message: json["message"],
        error: json["error"],
        result: Result.fromJson(json["result"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "error": error,
        "result": result.toJson(),
      };
}

class Result {
  Order order;

  Result({
    required this.order,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        order: Order.fromJson(json["order"]),
      );

  Map<String, dynamic> toJson() => {
        "order": order.toJson(),
      };
}

class Order {
  int id;
  int channelId;
  dynamic lastMileAwb;
  String channelName;
  String baseChannelCode;
  int isInternational;
  int isDocument;
  String channelOrderId;
  String customerName;
  String customerEmail;
  String customerPhone;
  String customerAddress;
  String customerAddress2;
  String customerCity;
  String customerState;
  String customerPincode;
  String customerCountry;
  String pickupCode;
  String pickupLocation;
  int pickupLocationId;
  String pickupId;
  String shipType;
  String courierMode;
  String currency;
  int countryCode;
  int exchangeRateUsd;
  int exchangeRateInr;
  int stateCode;
  String paymentStatus;
  String deliveryCode;
  int total;
  int totalInr;
  int totalUsd;
  String netTotal;
  String otherCharges;
  String otherDiscounts;
  String giftwrapCharges;
  int expedited;
  String sla;
  int cod;
  int tax;
  String totalKeralaCess;
  int discount;
  String status;
  dynamic subStatus;
  int statusCode;
  String masterStatus;
  String paymentMethod;
  int purposeOfShipment;
  String channelCreatedAt;
  String createdAt;
  String orderDate;
  String updatedAt;
  List<Product> products;
  String invoiceNo;
  String invoiceDate;
  Shipments shipments;
  AwbData awbData;
  OrderInsurance orderInsurance;
  String returnPickupData;
  dynamic companyLogo;
  int allowReturn;
  int isReturn;
  int isIncomplete;
  List<dynamic> errors;
  dynamic paymentCode;
  bool couponIsVisible;
  String coupons;
  String billingCity;
  String billingName;
  String billingEmail;
  String billingPhone;
  String billingAlternatePhone;
  String billingStateName;
  String billingAddress;
  String billingCountryName;
  String billingPincode;
  String billingAddress2;
  String billingMobileCountryCode;
  String isdCode;
  String billingStateId;
  String billingCountryId;
  String freightDescription;
  String resellerName;
  int shippingIsBilling;
  dynamic companyName;
  String shippingTitle;
  bool allowChannelOrderSync;
  String uibTooltipText;
  dynamic apiOrderId;
  int allowMultiship;
  List<dynamic> otherSubOrders;
  Others others;
  int isOrderVerified;
  ExtraInfo extraInfo;
  PackageList packageList;
  int dup;
  bool isBlackboxSeller;
  String shippingMethod;
  List<dynamic> refundDetail;
  PickupAddress pickupAddress;
  String ewayBillNumber;
  String ewayBillUrl;
  bool ewayRequired;
  String irnNo;
  dynamic engage;
  bool sellerCanEdit;
  bool sellerCanCancell;
  bool isPostShipStatus;
  String orderTag;
  String qcStatus;
  String qcReason;
  String qcImage;
  List<dynamic> productQc;
  List<dynamic> courierQcImage;
  dynamic sellerRequest;
  bool changePaymentMode;
  dynamic etdDate;
  dynamic outForDeliveryDate;
  dynamic deliveredDate;
  String remittanceDate;
  String remittanceUtr;
  String remittanceStatus;
  String shippingBill;
  String quickPick;
  String shippingBillNumber;
  dynamic exchangeAwb;
  dynamic exchangeStatus;
  String rtoPrediction;
  bool canEditDimension;

  Order({
    required this.id,
    required this.channelId,
    this.lastMileAwb,
    required this.channelName,
    required this.baseChannelCode,
    required this.isInternational,
    required this.isDocument,
    required this.channelOrderId,
    required this.customerName,
    required this.customerEmail,
    required this.customerPhone,
    required this.customerAddress,
    required this.customerAddress2,
    required this.customerCity,
    required this.customerState,
    required this.customerPincode,
    required this.customerCountry,
    required this.pickupCode,
    required this.pickupLocation,
    required this.pickupLocationId,
    required this.pickupId,
    required this.shipType,
    required this.courierMode,
    required this.currency,
    required this.countryCode,
    required this.exchangeRateUsd,
    required this.exchangeRateInr,
    required this.stateCode,
    required this.paymentStatus,
    required this.deliveryCode,
    required this.total,
    required this.totalInr,
    required this.totalUsd,
    required this.netTotal,
    required this.otherCharges,
    required this.otherDiscounts,
    required this.giftwrapCharges,
    required this.expedited,
    required this.sla,
    required this.cod,
    required this.tax,
    required this.totalKeralaCess,
    required this.discount,
    required this.status,
    this.subStatus,
    required this.statusCode,
    required this.masterStatus,
    required this.paymentMethod,
    required this.purposeOfShipment,
    required this.channelCreatedAt,
    required this.createdAt,
    required this.orderDate,
    required this.updatedAt,
    required this.products,
    required this.invoiceNo,
    required this.invoiceDate,
    required this.shipments,
    required this.awbData,
    required this.orderInsurance,
    required this.returnPickupData,
    this.companyLogo,
    required this.allowReturn,
    required this.isReturn,
    required this.isIncomplete,
    required this.errors,
    this.paymentCode,
    required this.couponIsVisible,
    required this.coupons,
    required this.billingCity,
    required this.billingName,
    required this.billingEmail,
    required this.billingPhone,
    required this.billingAlternatePhone,
    required this.billingStateName,
    required this.billingAddress,
    required this.billingCountryName,
    required this.billingPincode,
    required this.billingAddress2,
    required this.billingMobileCountryCode,
    required this.isdCode,
    required this.billingStateId,
    required this.billingCountryId,
    required this.freightDescription,
    required this.resellerName,
    required this.shippingIsBilling,
    this.companyName,
    required this.shippingTitle,
    required this.allowChannelOrderSync,
    required this.uibTooltipText,
    this.apiOrderId,
    required this.allowMultiship,
    required this.otherSubOrders,
    required this.others,
    required this.isOrderVerified,
    required this.extraInfo,
    required this.packageList,
    required this.dup,
    required this.isBlackboxSeller,
    required this.shippingMethod,
    required this.refundDetail,
    required this.pickupAddress,
    required this.ewayBillNumber,
    required this.ewayBillUrl,
    required this.ewayRequired,
    required this.irnNo,
    this.engage,
    required this.sellerCanEdit,
    required this.sellerCanCancell,
    required this.isPostShipStatus,
    required this.orderTag,
    required this.qcStatus,
    required this.qcReason,
    required this.qcImage,
    required this.productQc,
    required this.courierQcImage,
    this.sellerRequest,
    required this.changePaymentMode,
    this.etdDate,
    this.outForDeliveryDate,
    this.deliveredDate,
    required this.remittanceDate,
    required this.remittanceUtr,
    required this.remittanceStatus,
    required this.shippingBill,
    required this.quickPick,
    required this.shippingBillNumber,
    this.exchangeAwb,
    this.exchangeStatus,
    required this.rtoPrediction,
    required this.canEditDimension,
  });

  factory Order.fromJson(Map<String, dynamic> json) => Order(
        id: json["id"],
        channelId: json["channel_id"],
        lastMileAwb: json["last_mile_awb"],
        channelName: json["channel_name"],
        baseChannelCode: json["base_channel_code"],
        isInternational: json["is_international"],
        isDocument: json["is_document"],
        channelOrderId: json["channel_order_id"],
        customerName: json["customer_name"],
        customerEmail: json["customer_email"],
        customerPhone: json["customer_phone"],
        customerAddress: json["customer_address"],
        customerAddress2: json["customer_address_2"],
        customerCity: json["customer_city"],
        customerState: json["customer_state"],
        customerPincode: json["customer_pincode"],
        customerCountry: json["customer_country"],
        pickupCode: json["pickup_code"],
        pickupLocation: json["pickup_location"],
        pickupLocationId: json["pickup_location_id"],
        pickupId: json["pickup_id"],
        shipType: json["ship_type"],
        courierMode: json["courier_mode"],
        currency: json["currency"],
        countryCode: json["country_code"],
        exchangeRateUsd: json["exchange_rate_usd"],
        exchangeRateInr: json["exchange_rate_inr"],
        stateCode: json["state_code"],
        paymentStatus: json["payment_status"],
        deliveryCode: json["delivery_code"],
        total: json["total"],
        totalInr: json["total_inr"],
        totalUsd: json["total_usd"],
        netTotal: json["net_total"],
        otherCharges: json["other_charges"],
        otherDiscounts: json["other_discounts"],
        giftwrapCharges: json["giftwrap_charges"],
        expedited: json["expedited"],
        sla: json["sla"],
        cod: json["cod"],
        tax: json["tax"],
        totalKeralaCess: json["total_kerala_cess"],
        discount: json["discount"],
        status: json["status"],
        subStatus: json["sub_status"],
        statusCode: json["status_code"],
        masterStatus: json["master_status"],
        paymentMethod: json["payment_method"],
        purposeOfShipment: json["purpose_of_shipment"],
        channelCreatedAt: json["channel_created_at"],
        createdAt: json["created_at"],
        orderDate: json["order_date"],
        updatedAt: json["updated_at"],
        products: List<Product>.from(
            json["products"].map((x) => Product.fromJson(x))),
        invoiceNo: json["invoice_no"],
        invoiceDate: json["invoice_date"],
        shipments: Shipments.fromJson(json["shipments"]),
        awbData: AwbData.fromJson(json["awb_data"]),
        orderInsurance: OrderInsurance.fromJson(json["order_insurance"]),
        returnPickupData: json["return_pickup_data"],
        companyLogo: json["company_logo"],
        allowReturn: json["allow_return"],
        isReturn: json["is_return"],
        isIncomplete: json["is_incomplete"],
        errors: List<dynamic>.from(json["errors"].map((x) => x)),
        paymentCode: json["payment_code"],
        couponIsVisible: json["coupon_is_visible"],
        coupons: json["coupons"],
        billingCity: json["billing_city"],
        billingName: json["billing_name"],
        billingEmail: json["billing_email"],
        billingPhone: json["billing_phone"],
        billingAlternatePhone: json["billing_alternate_phone"],
        billingStateName: json["billing_state_name"],
        billingAddress: json["billing_address"],
        billingCountryName: json["billing_country_name"],
        billingPincode: json["billing_pincode"],
        billingAddress2: json["billing_address_2"],
        billingMobileCountryCode: json["billing_mobile_country_code"],
        isdCode: json["isd_code"],
        billingStateId: json["billing_state_id"],
        billingCountryId: json["billing_country_id"],
        freightDescription: json["freight_description"],
        resellerName: json["reseller_name"],
        shippingIsBilling: json["shipping_is_billing"],
        companyName: json["company_name"],
        shippingTitle: json["shipping_title"],
        allowChannelOrderSync: json["allow_channel_order_sync"],
        uibTooltipText: json["uib-tooltip-text"],
        apiOrderId: json["api_order_id"],
        allowMultiship: json["allow_multiship"],
        otherSubOrders:
            List<dynamic>.from(json["other_sub_orders"].map((x) => x)),
        others: Others.fromJson(json["others"]),
        isOrderVerified: json["is_order_verified"],
        extraInfo: ExtraInfo.fromJson(json["extra_info"]),
        packageList: PackageList.fromJson(json["package_list"]),
        dup: json["dup"],
        isBlackboxSeller: json["is_blackbox_seller"],
        shippingMethod: json["shipping_method"],
        refundDetail: List<dynamic>.from(json["refund_detail"].map((x) => x)),
        pickupAddress: PickupAddress.fromJson(json["pickup_address"]),
        ewayBillNumber: json["eway_bill_number"],
        ewayBillUrl: json["eway_bill_url"],
        ewayRequired: json["eway_required"],
        irnNo: json["irn_no"],
        engage: json["engage"],
        sellerCanEdit: json["seller_can_edit"],
        sellerCanCancell: json["seller_can_cancell"],
        isPostShipStatus: json["is_post_ship_status"],
        orderTag: json["order_tag"],
        qcStatus: json["qc_status"],
        qcReason: json["qc_reason"],
        qcImage: json["qc_image"],
        productQc: List<dynamic>.from(json["product_qc"].map((x) => x)),
        courierQcImage:
            List<dynamic>.from(json["courier_qc_image"].map((x) => x)),
        sellerRequest: json["seller_request"],
        changePaymentMode: json["change_payment_mode"],
        etdDate: json["etd_date"],
        outForDeliveryDate: json["out_for_delivery_date"],
        deliveredDate: json["delivered_date"],
        remittanceDate: json["remittance_date"],
        remittanceUtr: json["remittance_utr"],
        remittanceStatus: json["remittance_status"],
        shippingBill: json["shipping_bill"],
        quickPick: json["quick_pick"],
        shippingBillNumber: json["shipping_bill_number"],
        exchangeAwb: json["exchange_awb"],
        exchangeStatus: json["exchange_status"],
        rtoPrediction: json["rto_prediction"],
        canEditDimension: json["can_edit_dimension"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "channel_id": channelId,
        "last_mile_awb": lastMileAwb,
        "channel_name": channelName,
        "base_channel_code": baseChannelCode,
        "is_international": isInternational,
        "is_document": isDocument,
        "channel_order_id": channelOrderId,
        "customer_name": customerName,
        "customer_email": customerEmail,
        "customer_phone": customerPhone,
        "customer_address": customerAddress,
        "customer_address_2": customerAddress2,
        "customer_city": customerCity,
        "customer_state": customerState,
        "customer_pincode": customerPincode,
        "customer_country": customerCountry,
        "pickup_code": pickupCode,
        "pickup_location": pickupLocation,
        "pickup_location_id": pickupLocationId,
        "pickup_id": pickupId,
        "ship_type": shipType,
        "courier_mode": courierMode,
        "currency": currency,
        "country_code": countryCode,
        "exchange_rate_usd": exchangeRateUsd,
        "exchange_rate_inr": exchangeRateInr,
        "state_code": stateCode,
        "payment_status": paymentStatus,
        "delivery_code": deliveryCode,
        "total": total,
        "total_inr": totalInr,
        "total_usd": totalUsd,
        "net_total": netTotal,
        "other_charges": otherCharges,
        "other_discounts": otherDiscounts,
        "giftwrap_charges": giftwrapCharges,
        "expedited": expedited,
        "sla": sla,
        "cod": cod,
        "tax": tax,
        "total_kerala_cess": totalKeralaCess,
        "discount": discount,
        "status": status,
        "sub_status": subStatus,
        "status_code": statusCode,
        "master_status": masterStatus,
        "payment_method": paymentMethod,
        "purpose_of_shipment": purposeOfShipment,
        "channel_created_at": channelCreatedAt,
        "created_at": createdAt,
        "order_date": orderDate,
        "updated_at": updatedAt,
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
        "invoice_no": invoiceNo,
        "invoice_date": invoiceDate,
        "shipments": shipments.toJson(),
        "awb_data": awbData.toJson(),
        "order_insurance": orderInsurance.toJson(),
        "return_pickup_data": returnPickupData,
        "company_logo": companyLogo,
        "allow_return": allowReturn,
        "is_return": isReturn,
        "is_incomplete": isIncomplete,
        "errors": List<dynamic>.from(errors.map((x) => x)),
        "payment_code": paymentCode,
        "coupon_is_visible": couponIsVisible,
        "coupons": coupons,
        "billing_city": billingCity,
        "billing_name": billingName,
        "billing_email": billingEmail,
        "billing_phone": billingPhone,
        "billing_alternate_phone": billingAlternatePhone,
        "billing_state_name": billingStateName,
        "billing_address": billingAddress,
        "billing_country_name": billingCountryName,
        "billing_pincode": billingPincode,
        "billing_address_2": billingAddress2,
        "billing_mobile_country_code": billingMobileCountryCode,
        "isd_code": isdCode,
        "billing_state_id": billingStateId,
        "billing_country_id": billingCountryId,
        "freight_description": freightDescription,
        "reseller_name": resellerName,
        "shipping_is_billing": shippingIsBilling,
        "company_name": companyName,
        "shipping_title": shippingTitle,
        "allow_channel_order_sync": allowChannelOrderSync,
        "uib-tooltip-text": uibTooltipText,
        "api_order_id": apiOrderId,
        "allow_multiship": allowMultiship,
        "other_sub_orders": List<dynamic>.from(otherSubOrders.map((x) => x)),
        "others": others.toJson(),
        "is_order_verified": isOrderVerified,
        "extra_info": extraInfo.toJson(),
        "package_list": packageList.toJson(),
        "dup": dup,
        "is_blackbox_seller": isBlackboxSeller,
        "shipping_method": shippingMethod,
        "refund_detail": List<dynamic>.from(refundDetail.map((x) => x)),
        "pickup_address": pickupAddress.toJson(),
        "eway_bill_number": ewayBillNumber,
        "eway_bill_url": ewayBillUrl,
        "eway_required": ewayRequired,
        "irn_no": irnNo,
        "engage": engage,
        "seller_can_edit": sellerCanEdit,
        "seller_can_cancell": sellerCanCancell,
        "is_post_ship_status": isPostShipStatus,
        "order_tag": orderTag,
        "qc_status": qcStatus,
        "qc_reason": qcReason,
        "qc_image": qcImage,
        "product_qc": List<dynamic>.from(productQc.map((x) => x)),
        "courier_qc_image": List<dynamic>.from(courierQcImage.map((x) => x)),
        "seller_request": sellerRequest,
        "change_payment_mode": changePaymentMode,
        "etd_date": etdDate,
        "out_for_delivery_date": outForDeliveryDate,
        "delivered_date": deliveredDate,
        "remittance_date": remittanceDate,
        "remittance_utr": remittanceUtr,
        "remittance_status": remittanceStatus,
        "shipping_bill": shippingBill,
        "quick_pick": quickPick,
        "shipping_bill_number": shippingBillNumber,
        "exchange_awb": exchangeAwb,
        "exchange_status": exchangeStatus,
        "rto_prediction": rtoPrediction,
        "can_edit_dimension": canEditDimension,
      };
}

class AwbData {
  String awb;
  String appliedWeight;
  String chargedWeight;
  String billedWeight;
  String routingCode;
  String rtoRoutingCode;
  Charges charges;

  AwbData({
    required this.awb,
    required this.appliedWeight,
    required this.chargedWeight,
    required this.billedWeight,
    required this.routingCode,
    required this.rtoRoutingCode,
    required this.charges,
  });

  factory AwbData.fromJson(Map<String, dynamic> json) => AwbData(
        awb: json["awb"],
        appliedWeight: json["applied_weight"],
        chargedWeight: json["charged_weight"],
        billedWeight: json["billed_weight"],
        routingCode: json["routing_code"],
        rtoRoutingCode: json["rto_routing_code"],
        charges: Charges.fromJson(json["charges"]),
      );

  Map<String, dynamic> toJson() => {
        "awb": awb,
        "applied_weight": appliedWeight,
        "charged_weight": chargedWeight,
        "billed_weight": billedWeight,
        "routing_code": routingCode,
        "rto_routing_code": rtoRoutingCode,
        "charges": charges.toJson(),
      };
}

class Charges {
  String zone;
  String codCharges;
  String appliedWeightAmount;
  String freightCharges;
  String appliedWeight;
  String chargedWeight;
  String chargedWeightAmount;
  String chargedWeightAmountRto;
  String appliedWeightAmountRto;
  String serviceTypeId;

  Charges({
    required this.zone,
    required this.codCharges,
    required this.appliedWeightAmount,
    required this.freightCharges,
    required this.appliedWeight,
    required this.chargedWeight,
    required this.chargedWeightAmount,
    required this.chargedWeightAmountRto,
    required this.appliedWeightAmountRto,
    required this.serviceTypeId,
  });

  factory Charges.fromJson(Map<String, dynamic> json) => Charges(
        zone: json["zone"],
        codCharges: json["cod_charges"],
        appliedWeightAmount: json["applied_weight_amount"],
        freightCharges: json["freight_charges"],
        appliedWeight: json["applied_weight"],
        chargedWeight: json["charged_weight"],
        chargedWeightAmount: json["charged_weight_amount"],
        chargedWeightAmountRto: json["charged_weight_amount_rto"],
        appliedWeightAmountRto: json["applied_weight_amount_rto"],
        serviceTypeId: json["service_type_id"],
      );

  Map<String, dynamic> toJson() => {
        "zone": zone,
        "cod_charges": codCharges,
        "applied_weight_amount": appliedWeightAmount,
        "freight_charges": freightCharges,
        "applied_weight": appliedWeight,
        "charged_weight": chargedWeight,
        "charged_weight_amount": chargedWeightAmount,
        "charged_weight_amount_rto": chargedWeightAmountRto,
        "applied_weight_amount_rto": appliedWeightAmountRto,
        "service_type_id": serviceTypeId,
      };
}

class ExtraInfo {
  String orderType;
  String rtoReason;
  int isDocument;
  OrderMetadata orderMetadata;
  String rtoPredEnable;
  String rtoReasonCode;
  bool amazonDgStatus;
  bool appliedSrChallan;
  bool bluedartDgStatus;
  int isPromiseAssured;
  bool otherCourierDgStatus;
  bool insuraceOptedAtOrderCreation;

  ExtraInfo({
    required this.orderType,
    required this.rtoReason,
    required this.isDocument,
    required this.orderMetadata,
    required this.rtoPredEnable,
    required this.rtoReasonCode,
    required this.amazonDgStatus,
    required this.appliedSrChallan,
    required this.bluedartDgStatus,
    required this.isPromiseAssured,
    required this.otherCourierDgStatus,
    required this.insuraceOptedAtOrderCreation,
  });

  factory ExtraInfo.fromJson(Map<String, dynamic> json) => ExtraInfo(
        orderType: json["order_type"],
        rtoReason: json["rto_reason"],
        isDocument: json["is_document"],
        orderMetadata: OrderMetadata.fromJson(json["order_metadata"]),
        rtoPredEnable: json["rto_pred_enable"],
        rtoReasonCode: json["rto_reason_code"],
        amazonDgStatus: json["amazon_dg_status"],
        appliedSrChallan: json["applied_sr_challan"],
        bluedartDgStatus: json["bluedart_dg_status"],
        isPromiseAssured: json["is_promise_assured"],
        otherCourierDgStatus: json["other_courier_dg_status"],
        insuraceOptedAtOrderCreation: json["insurace_opted_at_order_creation"],
      );

  Map<String, dynamic> toJson() => {
        "order_type": orderType,
        "rto_reason": rtoReason,
        "is_document": isDocument,
        "order_metadata": orderMetadata.toJson(),
        "rto_pred_enable": rtoPredEnable,
        "rto_reason_code": rtoReasonCode,
        "amazon_dg_status": amazonDgStatus,
        "applied_sr_challan": appliedSrChallan,
        "bluedart_dg_status": bluedartDgStatus,
        "is_promise_assured": isPromiseAssured,
        "other_courier_dg_status": otherCourierDgStatus,
        "insurace_opted_at_order_creation": insuraceOptedAtOrderCreation,
      };
}

class OrderMetadata {
  String type;
  bool device;
  String platform;
  String clientIp;
  String requestType;
  bool isInsuranceOpt;

  OrderMetadata({
    required this.type,
    required this.device,
    required this.platform,
    required this.clientIp,
    required this.requestType,
    required this.isInsuranceOpt,
  });

  factory OrderMetadata.fromJson(Map<String, dynamic> json) => OrderMetadata(
        type: json["type"],
        device: json["device"],
        platform: json["platform"],
        clientIp: json["client_ip"],
        requestType: json["request_type"],
        isInsuranceOpt: json["is_insurance_opt"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "device": device,
        "platform": platform,
        "client_ip": clientIp,
        "request_type": requestType,
        "is_insurance_opt": isInsuranceOpt,
      };
}

class OrderInsurance {
  String insuranceStatus;
  String policyNo;
  bool claimEnable;

  OrderInsurance({
    required this.insuranceStatus,
    required this.policyNo,
    required this.claimEnable,
  });

  factory OrderInsurance.fromJson(Map<String, dynamic> json) => OrderInsurance(
        insuranceStatus: json["insurance_status"],
        policyNo: json["policy_no"],
        claimEnable: json["claim_enable"],
      );

  Map<String, dynamic> toJson() => {
        "insurance_status": insuranceStatus,
        "policy_no": policyNo,
        "claim_enable": claimEnable,
      };
}

class Others {
  double weight;
  int quantity;
  dynamic clientId;
  bool selfShip;
  dynamic shipDate;
  dynamic vendorId;
  dynamic buyerPsid;
  String dimensions;
  List<OrderItem> orderItems;
  dynamic vendorCode;
  dynamic companyName;
  dynamic invoiceDate;
  dynamic currencyCode;
  int packageCount;
  dynamic resellerName;
  dynamic customerGstin;
  dynamic invoiceAmount;
  dynamic invoiceNumber;
  String transactionId;
  String ewayBillNumber;
  int shippingCharges;
  int isOrderVerified;
  String orderVerifiedAt;
  String shippingServiceType;
  String transactionDateTime;
  dynamic packagingUnitDetails;
  String storeRushPromiseSla;
  String billingAlternatePhone;
  String customerIsdCode;

  Others({
    required this.weight,
    required this.quantity,
    this.clientId,
    required this.selfShip,
    this.shipDate,
    this.vendorId,
    this.buyerPsid,
    required this.dimensions,
    required this.orderItems,
    this.vendorCode,
    this.companyName,
    this.invoiceDate,
    this.currencyCode,
    required this.packageCount,
    this.resellerName,
    this.customerGstin,
    this.invoiceAmount,
    this.invoiceNumber,
    required this.transactionId,
    required this.ewayBillNumber,
    required this.shippingCharges,
    required this.isOrderVerified,
    required this.orderVerifiedAt,
    required this.shippingServiceType,
    required this.transactionDateTime,
    this.packagingUnitDetails,
    required this.storeRushPromiseSla,
    required this.billingAlternatePhone,
    required this.customerIsdCode,
  });

  factory Others.fromJson(Map<String, dynamic> json) => Others(
        weight: json["weight"]?.toDouble(),
        quantity: json["quantity"],
        clientId: json["client_id"],
        selfShip: json["self_ship"],
        shipDate: json["ship_date"],
        vendorId: json["vendor_id"],
        buyerPsid: json["buyer_psid"],
        dimensions: json["dimensions"],
        orderItems: List<OrderItem>.from(
            json["order_items"].map((x) => OrderItem.fromJson(x))),
        vendorCode: json["vendor_code"],
        companyName: json["company_name"],
        invoiceDate: json["invoice_date"],
        currencyCode: json["currency_code"],
        packageCount: json["package_count"],
        resellerName: json["reseller_name"],
        customerGstin: json["customer_gstin"],
        invoiceAmount: json["invoice_amount"],
        invoiceNumber: json["invoice_number"],
        transactionId: json["transaction_id"],
        ewayBillNumber: json["eway_bill_number"],
        shippingCharges: json["shipping_charges"],
        isOrderVerified: json["is_order_verified"],
        orderVerifiedAt: json["order_verified_at"],
        shippingServiceType: json["shipping_service_type"],
        transactionDateTime: json["transaction_date_time"],
        packagingUnitDetails: json["packaging_unit_details"],
        storeRushPromiseSla: json["store_rush_promise_sla"],
        billingAlternatePhone: json["billing_alternate_phone"],
        customerIsdCode: json["customer_isd_code"],
      );

  Map<String, dynamic> toJson() => {
        "weight": weight,
        "quantity": quantity,
        "client_id": clientId,
        "self_ship": selfShip,
        "ship_date": shipDate,
        "vendor_id": vendorId,
        "buyer_psid": buyerPsid,
        "dimensions": dimensions,
        "order_items": List<dynamic>.from(orderItems.map((x) => x.toJson())),
        "vendor_code": vendorCode,
        "company_name": companyName,
        "invoice_date": invoiceDate,
        "currency_code": currencyCode,
        "package_count": packageCount,
        "reseller_name": resellerName,
        "customer_gstin": customerGstin,
        "invoice_amount": invoiceAmount,
        "invoice_number": invoiceNumber,
        "transaction_id": transactionId,
        "eway_bill_number": ewayBillNumber,
        "shipping_charges": shippingCharges,
        "is_order_verified": isOrderVerified,
        "order_verified_at": orderVerifiedAt,
        "shipping_service_type": shippingServiceType,
        "transaction_date_time": transactionDateTime,
        "packaging_unit_details": packagingUnitDetails,
        "store_rush_promise_sla": storeRushPromiseSla,
        "billing_alternate_phone": billingAlternatePhone,
        "customer_isd_code": customerIsdCode,
      };
}

class OrderItem {
  int hsn;
  String sku;
  String tax;
  String name;
  int units;
  String discount;
  int sellingPrice;

  OrderItem({
    required this.hsn,
    required this.sku,
    required this.tax,
    required this.name,
    required this.units,
    required this.discount,
    required this.sellingPrice,
  });

  factory OrderItem.fromJson(Map<String, dynamic> json) => OrderItem(
        hsn: json["hsn"],
        sku: json["sku"],
        tax: json["tax"],
        name: json["name"],
        units: json["units"],
        discount: json["discount"],
        sellingPrice: json["selling_price"],
      );

  Map<String, dynamic> toJson() => {
        "hsn": hsn,
        "sku": sku,
        "tax": tax,
        "name": name,
        "units": units,
        "discount": discount,
        "selling_price": sellingPrice,
      };
}

class PackageList {
  String packages;
  bool selected;
  bool selectItem;

  PackageList({
    required this.packages,
    required this.selected,
    required this.selectItem,
  });

  factory PackageList.fromJson(Map<String, dynamic> json) => PackageList(
        packages: json["packages"],
        selected: json["selected"],
        selectItem: json["select_item"],
      );

  Map<String, dynamic> toJson() => {
        "packages": packages,
        "selected": selected,
        "select_item": selectItem,
      };
}

class PickupAddress {
  int id;
  String pinCode;
  String pickupCode;
  String name;
  String phone;
  int phoneVerified;
  String address;
  String address2;
  String city;
  String state;
  String country;
  String email;
  String lat;
  String long;
  int pickupAddressNew;

  PickupAddress({
    required this.id,
    required this.pinCode,
    required this.pickupCode,
    required this.name,
    required this.phone,
    required this.phoneVerified,
    required this.address,
    required this.address2,
    required this.city,
    required this.state,
    required this.country,
    required this.email,
    required this.lat,
    required this.long,
    required this.pickupAddressNew,
  });

  factory PickupAddress.fromJson(Map<String, dynamic> json) => PickupAddress(
        id: json["id"],
        pinCode: json["pin_code"],
        pickupCode: json["pickup_code"],
        name: json["name"],
        phone: json["phone"],
        phoneVerified: json["phone_verified"],
        address: json["address"],
        address2: json["address_2"],
        city: json["city"],
        state: json["state"],
        country: json["country"],
        email: json["email"],
        lat: json["lat"],
        long: json["long"],
        pickupAddressNew: json["new"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "pin_code": pinCode,
        "pickup_code": pickupCode,
        "name": name,
        "phone": phone,
        "phone_verified": phoneVerified,
        "address": address,
        "address_2": address2,
        "city": city,
        "state": state,
        "country": country,
        "email": email,
        "lat": lat,
        "long": long,
        "new": pickupAddressNew,
      };
}

class Product {
  int id;
  int orderId;
  int productId;
  String name;
  String sku;
  dynamic description;
  String channelOrderProductId;
  String channelSku;
  String hsn;
  dynamic model;
  dynamic manufacturer;
  dynamic brand;
  dynamic color;
  dynamic size;
  String customField;
  String customFieldValue;
  String customFieldValueString;
  int weight;
  String dimensions;
  int price;
  int cost;
  int mrp;
  int quantity;
  int returnableQuantity;
  int tax;
  int status;
  int netTotal;
  int discount;
  List<dynamic> productOptions;
  int sellingPrice;
  int taxPercentage;
  int discountIncludingTax;
  String channelCategory;
  String packagingMaterial;
  String additionalMaterial;
  String isFreeProduct;

  Product({
    required this.id,
    required this.orderId,
    required this.productId,
    required this.name,
    required this.sku,
    this.description,
    required this.channelOrderProductId,
    required this.channelSku,
    required this.hsn,
    this.model,
    this.manufacturer,
    this.brand,
    this.color,
    this.size,
    required this.customField,
    required this.customFieldValue,
    required this.customFieldValueString,
    required this.weight,
    required this.dimensions,
    required this.price,
    required this.cost,
    required this.mrp,
    required this.quantity,
    required this.returnableQuantity,
    required this.tax,
    required this.status,
    required this.netTotal,
    required this.discount,
    required this.productOptions,
    required this.sellingPrice,
    required this.taxPercentage,
    required this.discountIncludingTax,
    required this.channelCategory,
    required this.packagingMaterial,
    required this.additionalMaterial,
    required this.isFreeProduct,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        orderId: json["order_id"],
        productId: json["product_id"],
        name: json["name"],
        sku: json["sku"],
        description: json["description"],
        channelOrderProductId: json["channel_order_product_id"],
        channelSku: json["channel_sku"],
        hsn: json["hsn"],
        model: json["model"],
        manufacturer: json["manufacturer"],
        brand: json["brand"],
        color: json["color"],
        size: json["size"],
        customField: json["custom_field"],
        customFieldValue: json["custom_field_value"],
        customFieldValueString: json["custom_field_value_string"],
        weight: json["weight"],
        dimensions: json["dimensions"],
        price: json["price"],
        cost: json["cost"],
        mrp: json["mrp"],
        quantity: json["quantity"],
        returnableQuantity: json["returnable_quantity"],
        tax: json["tax"],
        status: json["status"],
        netTotal: json["net_total"],
        discount: json["discount"],
        productOptions:
            List<dynamic>.from(json["product_options"].map((x) => x)),
        sellingPrice: json["selling_price"],
        taxPercentage: json["tax_percentage"],
        discountIncludingTax: json["discount_including_tax"],
        channelCategory: json["channel_category"],
        packagingMaterial: json["packaging_material"],
        additionalMaterial: json["additional_material"],
        isFreeProduct: json["is_free_product"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "order_id": orderId,
        "product_id": productId,
        "name": name,
        "sku": sku,
        "description": description,
        "channel_order_product_id": channelOrderProductId,
        "channel_sku": channelSku,
        "hsn": hsn,
        "model": model,
        "manufacturer": manufacturer,
        "brand": brand,
        "color": color,
        "size": size,
        "custom_field": customField,
        "custom_field_value": customFieldValue,
        "custom_field_value_string": customFieldValueString,
        "weight": weight,
        "dimensions": dimensions,
        "price": price,
        "cost": cost,
        "mrp": mrp,
        "quantity": quantity,
        "returnable_quantity": returnableQuantity,
        "tax": tax,
        "status": status,
        "net_total": netTotal,
        "discount": discount,
        "product_options": List<dynamic>.from(productOptions.map((x) => x)),
        "selling_price": sellingPrice,
        "tax_percentage": taxPercentage,
        "discount_including_tax": discountIncludingTax,
        "channel_category": channelCategory,
        "packaging_material": packagingMaterial,
        "additional_material": additionalMaterial,
        "is_free_product": isFreeProduct,
      };
}

class Shipments {
  int id;
  int orderId;
  dynamic orderProductId;
  int channelId;
  String code;
  String cost;
  String tax;
  dynamic awb;
  String lastMileAwb;
  String rtoAwb;
  dynamic awbAssignDate;
  String etd;
  String deliveredDate;
  int quantity;
  String codCharges;
  dynamic number;
  dynamic name;
  dynamic orderItemId;
  double weight;
  double volumetricWeight;
  String dimensions;
  String comment;
  String courier;
  String courierId;
  String manifestId;
  bool manifestEscalate;
  String status;
  String isdCode;
  String createdAt;
  String updatedAt;
  dynamic pod;
  String ewayBillNumber;
  dynamic ewayBillDate;
  int length;
  int breadth;
  int height;
  String rtoInitiatedDate;
  String rtoDeliveredDate;
  String shippedDate;
  String packageImages;
  bool isRto;
  bool ewayRequired;
  String invoiceLink;
  int isDarkstoreCourier;
  String courierCustomRule;
  bool isSingleShipment;

  Shipments({
    required this.id,
    required this.orderId,
    this.orderProductId,
    required this.channelId,
    required this.code,
    required this.cost,
    required this.tax,
    this.awb,
    required this.lastMileAwb,
    required this.rtoAwb,
    this.awbAssignDate,
    required this.etd,
    required this.deliveredDate,
    required this.quantity,
    required this.codCharges,
    this.number,
    this.name,
    this.orderItemId,
    required this.weight,
    required this.volumetricWeight,
    required this.dimensions,
    required this.comment,
    required this.courier,
    required this.courierId,
    required this.manifestId,
    required this.manifestEscalate,
    required this.status,
    required this.isdCode,
    required this.createdAt,
    required this.updatedAt,
    this.pod,
    required this.ewayBillNumber,
    this.ewayBillDate,
    required this.length,
    required this.breadth,
    required this.height,
    required this.rtoInitiatedDate,
    required this.rtoDeliveredDate,
    required this.shippedDate,
    required this.packageImages,
    required this.isRto,
    required this.ewayRequired,
    required this.invoiceLink,
    required this.isDarkstoreCourier,
    required this.courierCustomRule,
    required this.isSingleShipment,
  });

  factory Shipments.fromJson(Map<String, dynamic> json) => Shipments(
        id: json["id"],
        orderId: json["order_id"],
        orderProductId: json["order_product_id"],
        channelId: json["channel_id"],
        code: json["code"],
        cost: json["cost"],
        tax: json["tax"],
        awb: json["awb"],
        lastMileAwb: json["last_mile_awb"],
        rtoAwb: json["rto_awb"],
        awbAssignDate: json["awb_assign_date"],
        etd: json["etd"],
        deliveredDate: json["delivered_date"],
        quantity: json["quantity"],
        codCharges: json["cod_charges"],
        number: json["number"],
        name: json["name"],
        orderItemId: json["order_item_id"],
        weight: json["weight"]?.toDouble(),
        volumetricWeight: json["volumetric_weight"]?.toDouble(),
        dimensions: json["dimensions"],
        comment: json["comment"],
        courier: json["courier"],
        courierId: json["courier_id"],
        manifestId: json["manifest_id"],
        manifestEscalate: json["manifest_escalate"],
        status: json["status"],
        isdCode: json["isd_code"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        pod: json["pod"],
        ewayBillNumber: json["eway_bill_number"],
        ewayBillDate: json["eway_bill_date"],
        length: json["length"],
        breadth: json["breadth"],
        height: json["height"],
        rtoInitiatedDate: json["rto_initiated_date"],
        rtoDeliveredDate: json["rto_delivered_date"],
        shippedDate: json["shipped_date"],
        packageImages: json["package_images"],
        isRto: json["is_rto"],
        ewayRequired: json["eway_required"],
        invoiceLink: json["invoice_link"],
        isDarkstoreCourier: json["is_darkstore_courier"],
        courierCustomRule: json["courier_custom_rule"],
        isSingleShipment: json["is_single_shipment"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "order_id": orderId,
        "order_product_id": orderProductId,
        "channel_id": channelId,
        "code": code,
        "cost": cost,
        "tax": tax,
        "awb": awb,
        "last_mile_awb": lastMileAwb,
        "rto_awb": rtoAwb,
        "awb_assign_date": awbAssignDate,
        "etd": etd,
        "delivered_date": deliveredDate,
        "quantity": quantity,
        "cod_charges": codCharges,
        "number": number,
        "name": name,
        "order_item_id": orderItemId,
        "weight": weight,
        "volumetric_weight": volumetricWeight,
        "dimensions": dimensions,
        "comment": comment,
        "courier": courier,
        "courier_id": courierId,
        "manifest_id": manifestId,
        "manifest_escalate": manifestEscalate,
        "status": status,
        "isd_code": isdCode,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "pod": pod,
        "eway_bill_number": ewayBillNumber,
        "eway_bill_date": ewayBillDate,
        "length": length,
        "breadth": breadth,
        "height": height,
        "rto_initiated_date": rtoInitiatedDate,
        "rto_delivered_date": rtoDeliveredDate,
        "shipped_date": shippedDate,
        "package_images": packageImages,
        "is_rto": isRto,
        "eway_required": ewayRequired,
        "invoice_link": invoiceLink,
        "is_darkstore_courier": isDarkstoreCourier,
        "courier_custom_rule": courierCustomRule,
        "is_single_shipment": isSingleShipment,
      };
}
