class Api{
  ///目前项目未发布到服务器，在本地运行调试，自行修改为自己的ip或者域名
  static const String REQUEST_HOST = "http://192.168.1.8:8089";


  /// 登录相关
  static const String SEND_MOBILE_PHONE_CODE = "/auth/sendMobileCode";
  static const String LOGIN_BY_PHONE = "/auth/login_by_phone";


}