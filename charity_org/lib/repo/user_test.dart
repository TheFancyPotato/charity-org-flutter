import 'package:charity_org/repo/user_repo.dart';

class UserTest implements UserRepository{
@override 
 login(String email, String password) {
    if(email == 'test@mail.com' && password.length >= 8){
    
    }
      
  }
  
  @override
  register(String email, String password, String name) {
    // TODO: implement register
    throw UnimplementedError();
  }
}