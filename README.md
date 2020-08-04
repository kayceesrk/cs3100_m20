# CS3100: Paradigms of Programming (IITM Monsoon 2020)

## Running the Jupyter notebooks

Install [docker](https://docs.docker.com/install/#supported-platforms) for your platform.

```bash
$ git clone https://github.com/kayceesrk/cs3100_m20
$ cd cs3100_m20/lectures
$ docker run -it -p 8888:8888 -v "$(pwd)":/lectures kayceesrk/cs3100_iitm:latest
$ jupyter notebook --ip=0.0.0.0
```

Copy and paste the URL displayed into your browser. If you save the changes to
the notebook, they are saved locally. 

If you get a permission denied error with docker, try running the docker command
with `sudo`:

```bash
$ sudo docker run -it -p 8888:8888 -v "$(pwd)":/lectures kayceesrk/cs3100_iitm:latest
```
