# Nim MPV

Nim bindings for libmpv. Control MPV with Nim!

Take note that this library is just the bindings, you still need to look at the [MPV documentation](https://mpv.io/manual/master/#synopsis) to use it.

## Examples

There are a few examples you can run inside the `examples` directory.

### Simple Example

`simple.nim` shows you a simple example on how to use the library, primarily focused on getting a file to be played with MPV.

### Complex Example

`complex.nim` shows you a slightly more complex example of how you can use this library, this includes getting keyboard input (using [ncurses](https://nimble.directory/pkg/ncurses)), then using that input to manipulate MPV.
