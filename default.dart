library default_connector;
import 'package:firebase_data_connect/firebase_data_connect.dart';
import 'dart:convert';

class DefaultConnector {
  static ConnectorConfig connectorConfig = ConnectorConfig(
    'europe-west1',  // Updated region for better performance in Turkey
    'default',
    'anonimchatapp',
  );

  DefaultConnector({required this.dataConnect});
  
  static DefaultConnector get instance {
    return DefaultConnector(
        dataConnect: FirebaseDataConnect.instanceFor(
            connectorConfig: connectorConfig,
            sdkType: CallerSDKType.generated));
  }

  FirebaseDataConnect dataConnect;
}
