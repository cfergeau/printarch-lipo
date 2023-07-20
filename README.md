This creates a very basic macOS go universal binary which prints the arch of
the binary which is being run.

The code can be built with `build.sh`, and then running `printarch.lipo` or `printarch.makefat` will either print `amd64` or `arm64`.
