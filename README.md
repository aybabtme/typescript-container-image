# typescript container image

A tiny Docker container image that contains a Typescript compiler. Meant to be used to compile typescript files, not as a runtime.

## usage

Mount your current directory, interactively:
```bash
docker run --rm -v /:/there/ --workdir=/there/$(pwd) -it aybabtme/typescript-compiler:latest
```

Or run a command:
```bash
docker run --rm -v /:/there/ --workdir=/there/$(pwd) -t aybabtme/typescript-compiler:latest "compile_typescript.sh"
```
