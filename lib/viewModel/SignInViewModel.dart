import 'package:google_pretrazivac/services/SignInServices/SignInServices.dart';

handleSignIn(context, _googleSignIn) {
  return SignInServices(context).handleSignIn(_googleSignIn);
}

listenOnCurrentUser(context, _googleSignIn) {
  return SignInServices(context).listenOnCurrentUser(_googleSignIn);
}
