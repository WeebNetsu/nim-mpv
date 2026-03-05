# Package

version       = "0.3.0"
author        = "WeebNetsu"
description   = "Nim bindings for libmpv"
license       = "MIT"
srcDir        = "src"
# bin           = @["mpv"]

# Dependencies
requires "nim >= 2.2.4"
requires "nimterop >= 0.6.13"

# optionally to run the complex.nim file
requires "ncurses >= 1.0.2"
# 

task examples, "Build examples":
  exec "nim c examples/simple.nim"
  exec "nim c examples/complex.nim"