import '../response/mock_response/mock_response.dart';

abstract class HttpDataAgent {
  Future<MockResponse> getMockResponse();
}
