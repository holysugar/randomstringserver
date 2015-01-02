Random String HTTP Server
==========================

This http server returns random string as text:

    $ curl http://localhost:9292
    0sn.aEsEPk

options
-------

length: numeric path is length (0 < n < 100, default: 10)

    $ curl http://localhost:9292/20
    gnoF3PTI6@FrzTEU6zH

number of times: 'x' and numbers path is repeat times (0 < n < 100, default: 1)

    $ curl http://localhost:9292/x5
    7Sc?1dLJMp
    .MkO7JfIEi
    Et@H+uMJA3
    l%2hGcpi0b
    e75xW4D6na

avoid symbols: 'as' path is avoiding symbols

    $ curl http://localhost:9292/as
    dGLb3w0gu1

avoid confusing: 'ac' path is avoiding confusing letters, 'ilILoOuvUV01'

and these options are joinable

    $ curl http://localhost:9292/ac/20x10/as
    3N9g4bhSmZ9cM6CKFetM
    A6FfnQxMznBcyY4hhkbz
    DMK5M2qKXdDNKGppHJaS
    tJXxAfCM6CTpQH4xKmPs
    3xCQQAx4SXYxy6dWAMMz
    bm36dKn9SpEQFzCdDpzX
    3BwM4dHBBcQQ2Hr8GjNy
    x43edHmeTeXpanTTBqWq
    M7ZyfeGY2QHZZTwtDa7x
    rr9xZpB3NJWdFjXRhPPq

