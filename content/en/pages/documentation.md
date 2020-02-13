---
title: TSC Scripting API Documentation
---

This page is currently empty. Once 2.1.0 is released, it will link to
the scripting API documentation for 2.1.0. Until then, please refer to
your local copy of the scripting API documentation. It is included in
binary distribtions of TSC in a folder called "scriptdocs". If you
compile TSC from source, the scripting API documentation is generated
automatically in the build directory as well (unless you have disabled
the generation by passing `-DENABLE_SCRIPT_DOCS=OFF` to `cmake`).

The *Core* documentation contains the level scripting API as defined
by the underlying raw C++ functions that is available in each level
script without further action. The *SSL* documents the additional
libraries that are shipped with TSC for scripting purposes that are
built on top of these core functionalities in pure Ruby. Starting from
2.1.0, the SSL's functionality is readily available in each level
script as well.
