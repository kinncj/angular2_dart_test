// 2016-05-18T10:00:00-07:00

// Copyright (c) 2016, kinncj. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';
import 'package:intl/intl.dart';
import 'dart:async';
import 'dart:html';

@Component(
    selector: 'io-clock',
    templateUrl: 'io_clock.html',
    styleUrls: const ['io_clock.css']
)
class ClockComponent {
    String date;

    ClockComponent() {
        Timer.run(remaining);
    }

    remaining() {
      var endtime    = "2020-08-09T00:00:01-07:00";
      var deadline   = DateTime.parse(endtime);
      var difference = deadline.difference(new DateTime.now());
      var formatter  = new DateFormat('dd/MM/yyy HH:mm:ss');

      date = formatter.format(deadline.subtract(difference));

      Timer.run(remaining);
    }
}
