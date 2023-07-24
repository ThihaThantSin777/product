import 'dart:convert';

import 'package:product/network/response/mock_response/mock_response.dart';

import 'http_data_agent.dart';
import 'package:http/http.dart' as http;

class HttpDataAgentImpl extends HttpDataAgent {
  HttpDataAgentImpl._();

  static final HttpDataAgentImpl _singleton = HttpDataAgentImpl._();

  factory HttpDataAgentImpl() => _singleton;

  @override
  Future<MockResponse> getMockResponse() async {
    final response = await http.get(Uri.parse(
        'https://a0746ecd-e042-4051-8962-f962f2068588.mock.pstmn.io/getData'));
    return MockResponse.fromJson(jsonDecode(response.body));
  }
}
