import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
class GoogleSignInService {
  static GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: [
    'email'
  ],

);
static Future<GoogleSignInAccount> signInWithGoogle() async{
  try {

   final GoogleSignInAccount account =  await _googleSignIn.signIn();
   final googleKey = await account.authentication;
  //  print(account);
  //  print('======ID TOKEN ==============');
  //  print(googleKey.idToken);


   //llamaremos un servicio REST a nuestro backend
   final signInWithGoogleEndPoint = Uri(
     scheme: 'https',
     host: 'demo-google-sign-in.herokuapp.com',
     path: '/google'
   );


   final session = await http.post(
     signInWithGoogleEndPoint,
     body: {
       'token':googleKey.idToken
     }
   );

    //aqui mostramos  los datos desde nuestra backend
   print('====Backend =============');
   print(session.body);


   return account;

  } catch (e) {
    print('Error En el Ingreso de login');
    print(e);
    return null;
  }
}

static Future signOut()async{
  await _googleSignIn.signOut();
}
}