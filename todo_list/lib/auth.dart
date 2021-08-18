class Auth
{
  final FirebaseAuth auth;
  Auth(this.auth);
  Stream<User> get user => auth.authStateChanges();

  Future<String> createAccount({String email,String password}) async {
    try {
      await auth.createUserWithEmailAndPassword
      (
        email:email.trim() ,
        password:password,
      );
      return "Success";
    } on FireBaseAuthException catch (e) {
      rethrow;
    }
  } 
}