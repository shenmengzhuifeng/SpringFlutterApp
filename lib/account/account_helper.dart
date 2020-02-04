import 'package:flutter_app/http/entity/account/customer_info.dart';

class AccountHelper {
  static CustomerInfo _customerInfo = null;

  static CustomerInfo getCustomerInfo() {
    return _customerInfo;
  }
}
