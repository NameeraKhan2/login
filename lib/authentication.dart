import 'package:firebase_auth/firebase_auth';

class AuthenticationService{
  final FirebaseAuth _firebaseAuth;
  AuthenticationService(this._firebaseAuth);


  Stream<User> get authstatechanges => _firebaseAuth.authstatechanges();

  Future<String> signin({required String email, required String password}) async {
  try{
    await _firebaseAuth.signinwithemailandpassword(email: email, password: password);
    return "signed in";
  } on FirebaseAuthException catch (e){
  return e.message;
  }
  }

  Future<String> signup({required String email, required String password}) async {
    try{
      await _firebaseAuth.createuserwithemailandpassword(email: email, password: password);
      return "signed up";
    } on FirebaseAuthException catch (e){
      return e.message;
    }
  }


}