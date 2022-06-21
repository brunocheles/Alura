import 'package:http/http.dart';
import 'package:http_interceptor/http_interceptor.dart';
import 'package:new_bytebank/http/interceptors/logging_interceptors.dart';

final Client client = InterceptedClient.build(
  interceptors: [LoggingInterceptor()],
);

const String baseUrl = 'http://192.168.18.64:8080/transactions';


