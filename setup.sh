!# /usr/bin/env bash

# quicklisp
curl -O http://beta.quicklisp.org/quicklisp.lisp
curl -O http://beta.quicklisp.org/quicklisp.lisp.asc
curl -O beta.quicklisp.org/release-key.txt
mv release-key.txt quicklisp.release.key.asc
sudo port -v install gnupg
gpg --import quicklisp.release.key.asc
gpg --verify quicklisp.lisp.asc
sudo port -v install sbcl
sbcl --load quicklisp.lisp
