---
title: TSC Scripting Documentation
---

These pages link to the various pieces of documentation regarding
TSC’s scripting facilities. The *Core* documentation contains the
level scripting API as defined by the underlying raw C++ functions
that is available in each level script without further action. The
*SSL* documents the additional libraries that are shipped with TSC for
scripting purposes that are built on top of these core functionalities
in pure Ruby, and that need to be included by means of `TSC.require`.

The most recent version of this documentation can be generated from
the TSC source tree by the `rake docs` command.

Note that you won’t find the documentation for the inner workings of
TSC’s C++ code here. As it is only useful for you if you want to
develop on TSC itself, in which case it is important to have the most
recent version available, you can easily generate it in *Doxygen*
format by issueing the command `doxygen` in the `tsc/` directory of
your checked out copy of the TSC source tree.

Core Documentation
------------------

* [2.0.0-beta8](/docs/2.0.0-beta8/core/)

SSL Documentation
-----------------

* [2.0.0-beta8](/docs/2.0.0-beta8/ssl/)
