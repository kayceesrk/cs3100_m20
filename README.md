# CS3100: Paradigms of Programming (IITM Fall 2019)

## Running the Jupyter notebooks

Install [docker](https://docs.docker.com/install/#supported-platforms) for your platform.

```bash
$ git clone https://github.com/kayceesrk/cs3100_f19
$ cd cs3100_f19/_lectures
$ docker run -it -p 8888:8888 -v `pwd`:/lectures kayceesrk/cs3100_iitm:latest
$ jupyter notebook --ip=0.0.0.0
```

Copy and paste the URL displayed into your browser. If you save the changes to
the notebook, they are saved locally. 
