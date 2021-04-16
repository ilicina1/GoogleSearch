import 'package:flutter/material.dart';
import 'package:google_pretrazivac/services/GoogleSearchServices/GoogleSearchServices.dart';

searchGoogle(BuildContext context, String text) {
  return GoogleSearchServices().searchGoogle(context, text);
}

openGmail(BuildContext context) {
  return GoogleSearchServices().openGmail(context);
}
