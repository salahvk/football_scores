import 'package:football_scores/utils/snack_bar.dart';

errorHandling(response, context) {
  if (response.statusCode != 200) {
    showSnackBar("Something Went Wrong", context);
    return;
  }
}
