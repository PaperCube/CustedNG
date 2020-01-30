import 'package:custed2/core/extension/stringx.dart';
import 'package:custed2/locator.dart';
import 'package:custed2/service/mysso_service.dart';
import 'package:custed2/service/webvpn_based_service.dart';
import 'package:html/parser.dart' as html;

class IecardService extends WebvpnBasedService {
  static const authServerUrl =
      'http://iecard-cust-edu-cn-8080-p.webvpn.cust.edu.cn:8118';
  static const preloginUrl = '$authServerUrl/ias/prelogin?sysid=FWDT';

  static const baseUrl = 'http://iecard-cust-edu-cn.webvpn.cust.edu.cn:8118';
  static const loginUrl = '$baseUrl/cassyno/index';
  static const homeUrl = '$baseUrl/Category/Page?name=service';
  static const phoneChargeUrl = '$baseUrl/PPage/ComePage';
  static const phoneHomeUrl = '$baseUrl/Phone/Index';

  final MyssoService _mysso = locator<MyssoService>();

  @override
  Future<bool> login() async {
    final ticket = await _mysso.getTicketForIecard();
    final prelogin =
        await rawRequest('GET', '$preloginUrl&ticket=$ticket'.toUri());

    final ssoticketid = html
        .parse(prelogin.body)
        .querySelector('#ssoticketid')
        .attributes['value'];

    final response = await rawRequest('POST', loginUrl.toUri(), body: {
      'errorcode': '1',
      'continueurl': '',
      'ssoticketid': ssoticketid
    });

    return response.body.contains('Object moved');
  }
}
