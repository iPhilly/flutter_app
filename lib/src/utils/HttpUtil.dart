import 'dart:io';
import 'dart:convert';

class HttpUtil {

  get(String urlString) async {
    var httpClient = new HttpClient();
    var request = await httpClient.getUrl(Uri.parse(urlString));
    var response = await request.close();
    String result;
    if (response.statusCode == HttpStatus.ok) {
      var json = await response.join();
      var data = jsonDecode(json);
        print(json);
    }
  }
}