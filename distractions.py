#! /usr/bin/env python

# https://gist.github.com/toolness/6001212


'''
    This utility gets rid of distraction-ridden websites by changing
    /etc/hosts.
    To use, simply map distraction websites to 127.0.0.1 in your /etc/hosts
    file, with a comment containing the word 'DISTRACTION' at the end of
    each host line, e.g.:
      127.0.0.1    imdb.com        # DISTRACTION
      127.0.0.1    yahoo.com       # DISTRACTION
      127.0.0.1    myproject.org   # for local development of myproject
    Then run 'distractions.py on' to allow the distraction websites to
    be visited, and 'distractions.py off' to prevent them from being
    visited.
    Host file lines without 'DISTRACTION' in them, like myproject.org
    in the example above, will not be touched. Lines with 'DISTRACTION'
    in them will be commented-out and uncommented-out as needed.
'''

# When modifying this file, run 'distractions.py test' to run the
# tests. No output/zero exit code means all tests passed, otherwise there
# will be output and a nonzero exit code.

import os
import sys
import subprocess

if sys.platform == 'win32':
    HOSTS_FILE = '%s\\System32\Drivers\etc\hosts' % (
        os.environ['SYSTEMROOT']
    )
else:
    HOSTS_FILE = '/etc/hosts'

def disable_distraction_redirector(line):
    '''
    This comments-out host file lines that redirect distractions to
    127.0.0.1.
    Example:
      >>> disable_distraction_redirector('127.0.0.1 imdb.com # DISTRACTION')
      '#127.0.0.1 imdb.com # DISTRACTION'
    If a redirector is already disabled, it does nothing:
      >>> disable_distraction_redirector('#127.0.0.1 imdb.com # DISTRACTION')
      '#127.0.0.1 imdb.com # DISTRACTION'
    It does nothing to lines that aren't known distractions:
      >>> disable_distraction_redirector('127.0.0.1 myproject.org')
      '127.0.0.1 myproject.org'
    '''

    if not line.startswith('#') and 'DISTRACTION' in line:
        return '#' + line
    return line

def enable_distraction_redirector(line):
    '''
    This uncomments-out host file lines that redirect distractions to
    127.0.0.1.
    Example:
      >>> enable_distraction_redirector('#127.0.0.1 imdb.com # DISTRACTION')
      '127.0.0.1 imdb.com # DISTRACTION'
    If a redirector is already enabled, it does nothing:
      >>> enable_distraction_redirector('127.0.0.1 imdb.com # DISTRACTION')
      '127.0.0.1 imdb.com # DISTRACTION'
    It does nothing to lines that aren't known distractions:
      >>> enable_distraction_redirector('#127.0.0.1 myproject.org')
      '#127.0.0.1 myproject.org'
    '''

    if line.startswith('#') and 'DISTRACTION' in line:
        return line[1:]
    return line

def rewrite_hosts_file(rewrite_line):
    hostlines = open(HOSTS_FILE, 'r').readlines()
    rewritten = ''.join([rewrite_line(line) for line in hostlines])
    open(HOSTS_FILE, 'w').write(rewritten)

def main(action):
    if action == 'on':
        rewrite_hosts_file(disable_distraction_redirector)
        print "Distractions are now ON. Have fun!"
    elif action == 'off':
        rewrite_hosts_file(enable_distraction_redirector)
        print "Distractions are now OFF. Time to focus!"
    else:
        raise AssertionError('unkown action: %s' % action)

if __name__ == '__main__':
    if len(sys.argv) != 2 or sys.argv[1] not in ['on', 'off', 'test']:
        print "usage: %s <on|off>" % sys.argv[0]
        print __doc__
        sys.exit(1)

    if sys.argv[1] == 'test':
        import doctest
        sys.exit(doctest.testmod().failed)

    if hasattr(os, 'getuid') and os.getuid() != 0:
        sys.exit(subprocess.call(['/usr/bin/sudo'] + sys.argv[:2]))
    main(sys.argv[1])
