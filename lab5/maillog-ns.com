Nov 21 19:52:48 localhost postfix/postdrop[44210]: warning: unable to look up public/pickup: No such file or directory
Nov 21 19:53:30 localhost postfix/postfix-script[44291]: starting the Postfix mail system
Nov 21 19:53:30 localhost postfix/master[44293]: daemon started -- version 3.3.1, configuration /etc/postfix
Nov 21 19:53:30 localhost postfix/pickup[44294]: BCBC81042DE5: uid=1001 from=<instructor>
Nov 21 19:53:30 localhost postfix/cleanup[44296]: BCBC81042DE5: message-id=<20201122005330.BCBC81042DE5@mail.ns.com>
Nov 21 19:53:30 localhost postfix/qmgr[44295]: BCBC81042DE5: from=<instructor@cp.net>, size=460, nrcpt=1 (queue active)
Nov 21 19:53:30 localhost postfix/local[44298]: BCBC81042DE5: to=<instructor@cp.net>, relay=local, delay=42, delays=42/0.01/0/0, dsn=2.0.0, status=sent (delivered to mailbox)
Nov 21 19:53:30 localhost postfix/qmgr[44295]: BCBC81042DE5: removed
Nov 21 19:53:55 localhost postfix/pickup[44294]: 17FDE1042DE5: uid=1001 from=<instructor>
Nov 21 19:53:55 localhost postfix/cleanup[44296]: 17FDE1042DE5: message-id=<20201122005355.17FDE1042DE5@mail.ns.com>
Nov 21 19:53:55 localhost postfix/qmgr[44295]: 17FDE1042DE5: from=<instructor@cp.net>, size=473, nrcpt=1 (queue active)
Nov 21 19:53:55 localhost postfix/local[44298]: 17FDE1042DE5: to=<instructor@cp.net>, relay=local, delay=0.01, delays=0.01/0/0/0, dsn=2.0.0, status=sent (delivered to mailbox)
Nov 21 19:53:55 localhost postfix/qmgr[44295]: 17FDE1042DE5: removed
Nov 21 20:18:29 localhost postfix/pickup[44294]: B9DD2103A473: uid=1001 from=<instructor>
Nov 21 20:18:29 localhost postfix/cleanup[44543]: B9DD2103A473: message-id=<20201122011829.B9DD2103A473@mail.ns.com>
Nov 21 20:18:29 localhost postfix/qmgr[44295]: B9DD2103A473: from=<instructor@cp.net>, size=489, nrcpt=1 (queue active)
Nov 21 20:18:29 localhost postfix/local[44545]: B9DD2103A473: to=<instructor@cp.net>, relay=local, delay=0.04, delays=0.03/0.01/0/0, dsn=2.0.0, status=sent (delivered to mailbox)
Nov 21 20:18:29 localhost postfix/qmgr[44295]: B9DD2103A473: removed
Nov 21 20:22:32 localhost postfix/postfix-script[44595]: stopping the Postfix mail system
Nov 21 20:22:32 localhost postfix/master[44293]: terminating on signal 15
Nov 21 20:22:33 localhost postfix/postfix-script[44673]: starting the Postfix mail system
Nov 21 20:22:33 localhost postfix/master[44675]: daemon started -- version 3.3.1, configuration /etc/postfix
Nov 21 20:23:08 localhost postfix/pickup[44676]: CF42F103B28A: uid=1001 from=<instructor>
Nov 21 20:23:08 localhost postfix/cleanup[44683]: CF42F103B28A: message-id=<20201122012308.CF42F103B28A@mail.ns.com>
Nov 21 20:23:08 localhost postfix/qmgr[44677]: CF42F103B28A: from=<instructor@ns.com>, size=454, nrcpt=1 (queue active)
Nov 21 20:23:08 localhost postfix/smtp[44686]: connect to mail.cp.net[172.16.0.1]:25: No route to host
Nov 21 20:23:08 localhost postfix/smtp[44686]: CF42F103B28A: to=<instructor@cp.net>, relay=none, delay=0.08, delays=0.03/0.04/0.01/0, dsn=4.4.1, status=deferred (connect to mail.cp.net[172.16.0.1]:25: No route to host)
Nov 21 20:32:33 localhost postfix/qmgr[44677]: CF42F103B28A: from=<instructor@ns.com>, size=454, nrcpt=1 (queue active)
Nov 21 20:32:33 localhost postfix/smtp[44699]: connect to mail.cp.net[172.16.0.1]:25: No route to host
Nov 21 20:32:33 localhost postfix/smtp[44699]: CF42F103B28A: to=<instructor@cp.net>, relay=none, delay=564, delays=564/0.04/0/0, dsn=4.4.1, status=deferred (connect to mail.cp.net[172.16.0.1]:25: No route to host)
Nov 21 20:42:33 localhost postfix/qmgr[44677]: CF42F103B28A: from=<instructor@ns.com>, size=454, nrcpt=1 (queue active)
Nov 21 20:42:33 localhost postfix/smtp[44704]: connect to mail.cp.net[172.16.0.1]:25: No route to host
Nov 21 20:42:33 localhost postfix/smtp[44704]: CF42F103B28A: to=<instructor@cp.net>, relay=none, delay=1165, delays=1165/0.04/0/0, dsn=4.4.1, status=deferred (connect to mail.cp.net[172.16.0.1]:25: No route to host)
Nov 21 21:02:33 localhost postfix/qmgr[44677]: CF42F103B28A: from=<instructor@ns.com>, size=454, nrcpt=1 (queue active)
Nov 21 21:02:33 localhost postfix/smtp[44867]: connect to mail.cp.net[172.16.0.1]:25: Connection refused
Nov 21 21:02:33 localhost postfix/smtp[44867]: CF42F103B28A: to=<instructor@cp.net>, relay=none, delay=2364, delays=2364/0.04/0/0, dsn=4.4.1, status=deferred (connect to mail.cp.net[172.16.0.1]:25: Connection refused)
Nov 21 21:42:34 localhost postfix/qmgr[44677]: CF42F103B28A: from=<instructor@ns.com>, size=454, nrcpt=1 (queue active)
Nov 21 21:42:34 localhost postfix/smtp[44880]: CF42F103B28A: to=<instructor@cp.net>, relay=mail.cp.net[172.16.0.1]:25, delay=4766, delays=4766/0.04/0.15/0.04, dsn=2.0.0, status=sent (250 2.0.0 Ok: queued as A903630D2FE9)
Nov 21 21:42:34 localhost postfix/qmgr[44677]: CF42F103B28A: removed
Nov 21 22:10:45 localhost postfix/pickup[45041]: 56BCB103A46D: uid=1002 from=<spr5g6>
Nov 21 22:10:45 localhost postfix/cleanup[45166]: 56BCB103A46D: message-id=<20201122031045.56BCB103A46D@mail.ns.com>
Nov 21 22:10:45 localhost postfix/qmgr[44677]: 56BCB103A46D: from=<spr5g6@ns.com>, size=668, nrcpt=1 (queue active)
Nov 21 22:10:45 localhost postfix/smtp[45168]: 56BCB103A46D: to=<instructor@cp.net>, relay=mail.cp.net[172.16.0.1]:25, delay=0.2, delays=0.03/0.02/0.12/0.03, dsn=2.0.0, status=sent (250 2.0.0 Ok: queued as 82B4930A5E06)
Nov 21 22:10:45 localhost postfix/qmgr[44677]: 56BCB103A46D: removed
