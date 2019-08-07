# libwally

Dockerfile of the public image [vulpemventures/libwally](https://hub.docker.com/r/vulpemventures/libwally)


* Pull the image:

```bash
$ docker pull vulpemventures/libwally
```

* Run the container in interactive mode

```bash
$ docker run --rm -it docker-libwally:latest  
```

* Compile libwally

```bash
$ ./tools/autogen.sh
$ ./configure <options>
$ make
$ make check
```

You can check options [here](https://github.com/ElementsProject/libwally-core#configure-options)




