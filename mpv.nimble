# Package

version       = "0.2.0"
author        = "WeebNetsu"
description   = "Nim bindings for libmpv"
license       = "MIT"
srcDir        = "src"
# bin           = @["mpv"]

# Dependencies
requires "nim >= 1.6.6"
requires "nimterop >= 0.6.13"

# optionally to run the complex.nim file
# requires "ncurses >= 1.0.2"

task examples, "Build examples":
  exec "nim c examples/simple.nim"