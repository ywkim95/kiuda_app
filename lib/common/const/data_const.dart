// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:flutter_dotenv/flutter_dotenv.dart';

const COOKIE = 'COOKIE';

const EMAIL = 'EMAIL';

const EXPIRE_DATE = 'EXPIRE_DATE';

const AUTO_LOGIN = 'AUTO_LOGIN';

const ACCESS_TOKEN_KEY = 'ACCESS_TOKEN';

const REFRESH_TOKEN_KEY = 'REFRESH_TOKEN';

const ROOM_ID = 'ROOM_ID';

final rootPathSensor = dotenv.env['ROOT_PATH_SENSOR'];

final rootPathController = dotenv.env['ROOT_PATH_CONTROLLER'];

final ip = dotenv.env['IP_ADDRESS'];

final BASE_URL = dotenv.env['BASE_URL'];

final WEATHER_URL = dotenv.env['WEATHER_URL'];
