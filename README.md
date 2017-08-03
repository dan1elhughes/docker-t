# Docker T

:bird:

Dockerized version of [https://github.com/sferik/t](sferik/t) for command line Twitter

## Installation

- `touch ~/.trc`
- `docker run --rm -it -v /$HOME/.trc:/root/.trc dan1elhughes/docker-t authorize`

## Usage

- `docker run -v /$HOME/.trc:/root/.trc dan1elhughes/docker-t stream timeline`
- Or with alias (below): `t stream timeline`

## Result

Command line Twitter! See [here](https://github.com/sferik/t) for available commands

![](https://i.imgur.com/BqGwGHY.png)

## Aliasing

### Bash

```bash
alias t='docker run -v /$HOME/.trc:/root/.trc dan1elhughes/docker-t $@'
```

### Powershell

```ps1
function t {
	$h = $Home -replace "\\", "/" -replace ":", ""
	docker run --rm -v //$h/.trc:/root/.trc dan1elhughes/docker-t @args
}
```
