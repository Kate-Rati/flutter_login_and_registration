// const String baseUrl = "http://192.168.1.10:8000";
import 'dart:convert';

const String baseUrl = "http://192.168.97.133:5080";

String username = 'smart_protect';
String password = 'M@ct0M_2O22';
String basicAuth = 'Basic ${base64Encode(utf8.encode("$username:$password"))}';
