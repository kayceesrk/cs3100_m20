# CS3100: Paradigms of Programming (IITM Monsoon 2020)

This is the Github repo for the course CS3100 Paradigms of Programming taught at IITM in the Monsoon semester 2020. The course website is here: https://kcsrk.info/cs3100_m20/. The course also has a [YouTube playlist](https://www.youtube.com/watch?v=9R8Oim7YU20&list=PLt0HgEXFOHdkE-NTs87s7QjwYwqeihb-D) of all the lectures. The repo includes all the lecture notes, slide deck and assignments. 

The course teaches OCaml and Prolog. 

The first part of the course covers OCaml. The course covers a significant chunk of the OCaml language. You should be able to self-study the course to get a good understanding of the language. That said, the course deliberately does not cover the build system (dune), package manager (opam), command-line tools for the compiler (ocamlc, ocamlopt), editor integration (merlin, ocaml-lsp, ocamlformat), etc. If you are keen to learn these, please refer to the excellent [ocaml.org](https://ocaml.org/) website. In addition, the course does not cover the use of OCaml libraries. Hence, the course is not meant to make you a "productive" OCaml programmer building real-world applications. For this, I recommend [Real World OCaml](https://dev.realworldocaml.org/).

The second part of the course covers Prolog. The course gives a good introduction to Prolog, but does not go beyond the basics.  

## Running the Jupyter notebooks

Install [docker](https://docs.docker.com/install/#supported-platforms) for your platform.

```bash
$ git clone https://github.com/kayceesrk/cs3100_m20
$ cd cs3100_m20/lectures
$ docker run -it -p 8888:8888 -v "$(pwd)":/lectures kayceesrk/cs3100_iitm:latest
$ jupyter notebook --ip=0.0.0.0
```

Copy and paste the diplayed URL that starts with `http://127.0.0.1:8888` into
your browser. If you save the changes to the notebook, they are saved locally.
As you go through the course, you will have to do `git pull` in the
`cs3100_m20` directory to get the latest updates from upstream.

## Linux

On Linux, you need to run the docker command with `sudo`:

```bash
$ sudo docker run -it -p 8888:8888 -v "$(pwd)":/lectures kayceesrk/cs3100_iitm:latest
```

## Virtual Box Disk Image

While the docker set up is recommended, an Ubuntu virtual box disk image (VDI)
with the jupyter notebook is also available
[here](https://drive.google.com/drive/folders/1bak0M85dHd6Avvn1AANdFKBaYpomIuzT?usp=sharing).
The password is `cs3100_m20`. The course git repo has been cloned under
`cs3100_m20` in the home directory.  
