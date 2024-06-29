
import 'package:j_shop/core/service/service.dart';

import '../package.dart';

final allProviders = <SingleChildWidget> [
ChangeNotifierProvider(create: (context) => Shop()),
ChangeNotifierProvider(create: (context) => ApiService()),
ChangeNotifierProvider(create: (context) => FetchProductVM()),
];