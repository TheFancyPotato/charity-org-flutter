abstract class UserRepository{

Map<String, dynamic> register(String email, String password, String name);
Map<String, dynamic> login( String email, String password);
logOut();
}