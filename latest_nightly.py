#!/usr/bin/env python

import sys
import httplib
import urllib2


def main():
    product = sys.argv[1]

    conn = httplib.HTTPSConnection('download.mozilla.org')
    conn.request('HEAD', '/?product=%s-latest&os=linux&lang=en-US' % product)
    res = conn.getresponse()
    assert res.status == 302
    location = res.getheader('Location')

    url = location.replace('.tar.bz2', '.txt')
    assert url != location

    f = urllib2.urlopen(url)
    print ' '.join(l.rstrip() for l in f.readlines())
    f.close()

if __name__ == '__main__':
    main()
