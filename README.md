Go Container
============

This image contains the latest version of Go which is already
bootstrapped for cross-compiling programs for Linux, Windows, and
BSD with 32-bit, 64-bit, and ARM architecture support.

Example Usage
-------------

You can build a Go app with a command like the following:

    docker run -it --rm \
        -v $(pwd):/code/src/$(basename $PWD) \
        -w /code/src/$(basename $PWD) \
        -e GOPATH=/code \
        codekoala/go build

You can adjust this for another architecture with:

    docker run -it --rm \
        -v $(pwd):/code/src/$(basename $PWD) \
        -w /code/src/$(basename $PWD) \
        -e GOPATH=/code \
        -e GOARCH=386 \
        codekoala/go build

Or another platform:

    docker run -it --rm \
        -v $(pwd):/code/src/$(basename $PWD) \
        -w /code/src/$(basename $PWD) \
        -e GOPATH=/code \
        -e GOARCH=386 \
        -e GOOS=windows \
        codekoala/go build

Create an alias for it:

    alias dgo='docker run -it --rm -v $(pwd):/code/src/$(basename $PWD) -w /code/src/$(basename $PWD) -e GOPATH=/code -e GOARCH=$GOARCH -e GOOS=$GOOS codekoala/go '

    export GOOS=windows
    dgo build
