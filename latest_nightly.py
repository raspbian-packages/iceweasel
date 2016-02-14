#!/usr/bin/env python

import os
import re
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

    if '-' in product:
        product, variant = product.split('-', 1)
    else:
        variant = ''

    filename = os.path.basename(location)
    assert filename.startswith(product + '-')
    version = filename[len(product) + 1:]
    m = re.match(r'([0-9]+(?:\.[0-9]+)*(?:[ab][0-9]+)?)\.', version)
    assert m
    version = m.group(1)

    url = location.replace('.tar.bz2', '.txt')
    assert url != location

    f = urllib2.urlopen(url)
    print version, ' '.join(l.rstrip() for l in f.readlines())
    f.close()

if __name__ == '__main__':
    main()
