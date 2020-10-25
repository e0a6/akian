# Akian
Akian is as small docker image includes basic tools/software/programs that allow me to easily create a test environment.
Once I am done I can easily dispose of this test environment with no trace remaining on my host.

## Instructions
Build the docker image.
```sh
docker image build -t akian:1.0 .
```
Run a container.
```sh
docker container run --interactive --tty akian:1.0 /bin/bash
```

## TODO

## Author
A. Cheema
