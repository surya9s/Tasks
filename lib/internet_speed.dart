import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internet_speed_test/callbacks_enum.dart';
import 'package:internet_speed_test/internet_speed_test.dart';

class InternetSpeed extends StatefulWidget {
  const InternetSpeed({Key key}) : super(key: key);

  @override
  _InternetSpeedState createState() => _InternetSpeedState();
}

class _InternetSpeedState extends State<InternetSpeed> {
  final internetSpeedTest = InternetSpeedTest();

  double downloadRate = 0;
  double uploadRate = 0;
  String downloadProgress = '0';
  String uploadProgress = '0';

  String unitText = 'Mb/s';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text('Progress $downloadProgress%'),
                  Text('Download rate  $downloadRate $unitText'),
                ],
              ),
              // ignore: deprecated_member_use
              RaisedButton(
                child: Text('start testing'),
                onPressed: () {
                  internetSpeedTest.startDownloadTesting(
                    onDone: (double transferRate, SpeedUnit unit) {
                      print('the transfer rate $transferRate');
                      setState(() {
                        downloadRate = transferRate;
                        unitText = unit == SpeedUnit.Kbps ? 'Kb/s' : 'Mb/s';
                        downloadProgress = '100';
                      });
                    },
                    onProgress:
                        (double percent, double transferRate, SpeedUnit unit) {
                      print(
                          'the transfer rate $transferRate, the percent $percent');
                      setState(() {
                        downloadRate = transferRate;
                        unitText = unit == SpeedUnit.Kbps ? 'Kb/s' : 'Mb/s';
                        downloadProgress = percent.toStringAsFixed(2);
                      });
                    },
                    onError: (String errorMessage, String speedTestError) {
                      print(
                          'the errorMessage $errorMessage, the speedTestError $speedTestError');
                    },
                    fileSize: 20000000,
                  );
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text('Progress $uploadProgress%'),
                  Text('Upload rate  $uploadRate Kb/s'),
                ],
              ),
              // ignore: deprecated_member_use
              RaisedButton(
                child: Text('start testing'),
                onPressed: () {
                  internetSpeedTest.startUploadTesting(
                    onDone: (double transferRate, SpeedUnit unit) {
                      print('the transfer rate $transferRate');
                      setState(() {
                        uploadRate = transferRate;
                        unitText = unit == SpeedUnit.Kbps ? 'Kb/s' : 'Mb/s';
                        uploadProgress = '100';
                      });
                    },
                    onProgress:
                        (double percent, double transferRate, SpeedUnit unit) {
                      print(
                          'the transfer rate $transferRate, the percent $percent');
                      setState(() {
                        uploadRate = transferRate;
                        unitText = unit == SpeedUnit.Kbps ? 'Kb/s' : 'Mb/s';
                        uploadProgress = percent.toStringAsFixed(2);
                      });
                    },
                    onError: (String errorMessage, String speedTestError) {
                      print(
                          'the errorMessage $errorMessage, the speedTestError $speedTestError');
                    },
                    fileSize: 20000000,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
