[![License](http://img.shields.io/:license-Apache%202-red.svg)](http://www.apache.org/licenses/LICENSE-2.0.txt)

# Overview

This vim plugin is a custom syntax checker for [syntastic][] that just pulls in log files generated by the [sbt-vim-async-integration][] sbt plugin.  This plugin has no real meaning without that one.

# Status

This is in an alpha stage as of Feb '16 and while some minor kinks are worked out (like the column start being off by a few characters after running `sbt scalastyle`.

# Installation

To make my life a bit easier, the installation instructions can be found on the [sbt-vim-async-integration][sbt plugin] page.


[sbt-vim-async-integration]: https://github.com/zmre/sbt-vim-async-integration
[vim-scala-async-integration]: https://github.com/zmre/vim-scala-async-integration
[syntastic]: https://github.com/scrooloose/syntastic
