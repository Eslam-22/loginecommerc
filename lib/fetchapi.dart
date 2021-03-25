import 'package:http/http.dart' as http;
import 'package:http/http.dart'
import 'package:loginecommerc/story.dart';


class Fetchapi {
      Future<List<Story>> fetchdata() sync {
        http.Response res= await http.get('');
        if(res.Statuscode==200){
          var body=jsonDecode(res.body);
        }
        List<Story> stories=[];
        for (var item in body){
          stories.add(Story.fromjson(item));

        }
        return stories;

      }
}