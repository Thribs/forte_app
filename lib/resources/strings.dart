class Strings {
  static const String atendimento = "atendimento";

  static String supportWhatsappUrl(String phoneNumber) {
    return "https://wa.me/$phoneNumber";
  }

  static String deviceUnableToOpenUrl(String url) {
    return "não detectei um navegador capaz de abrir a url $url neste dispositivo";
  }

  static String failedToOpenUrl(String url) {
    return "não consegui abrir a url $url";
  }
}
