# Package

version       = "0.1.1"
author        = "WeebNetsu"
description   = "Nim bindings for libmpv"
license       = "MIT"
srcDir        = "src"
# bin           = @["mpv"]

# Dependencies
requires "nim >= 1.6.6"
requires "nimterop >= 0.6.13"

task examples, "Build examples":
  exec "nim c examples/simple.nim"