# Nim MPV

Nim bindings for libmpv. Control MPV with Nim!

Take note that this library is just the bindings, you still need to look at the [MPV documentation](https://mpv.io/manual/master/#synopsis) to use it.

## Examples

There are a few examples you can run inside the `examples` directory.

For examples run `nimble examples` and it will compile all the examples in the examples directory.

### Simple Example

`simple.nim` shows you a simple example on how to use the library, primarily focused on getting a file to be played with MPV.

```
./simple ~/path/to/file.mp4
```

### Complex Example

`complex.nim` shows you a slightly more complex example of how you can use this library, this includes getting keyboard input (using [ncurses](https://nimble.directory/pkg/ncurses)), then using that input to manipulate MPV.

```
./complex https://www.youtube.com/watch?v=dQw4w9WgXcQ
```

## Dependencies

- [mpv](https://mpv.io/installation/)
- [libmpv-dev](https://community.linuxmint.com/software/view/libmpv-dev)
- [ncurses](https://nimble.directory/pkg/ncurses) (only if compiling complex example)
