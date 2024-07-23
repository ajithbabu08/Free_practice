import 'package:free_practice/api_using_dio/model/data_model.dart';
import 'package:free_practice/api_using_dio/service/api_service.dart';
import 'package:get/get.dart';


class DataController extends GetxController{



  RxList<UserDetails> datas=RxList();
  RxBool isLoading= true.obs;
  RxBool isListatDown= false.obs;



  var url='https://reqres.in/api/users?delay=3';


  fetchData() async{
    isLoading.value =true;
    var response= await DioService().getData(url);
    if(response.statusCode == 200){
      response.data.forEach((element){
        datas.add(UserDetails.fromJson(element));
      });
      isLoading.value=false;
    }
  }

  @override
  void onInit() {
    fetchData();
    super.onInit();
  }
}

