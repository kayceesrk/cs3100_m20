open Ocamlbuild_plugin;;

Options.ocaml_pkgs := "str"::!Options.ocaml_pkgs;;
Options.ocaml_cflags := "-bin-annot"::!Options.ocaml_cflags;;
Options.use_ocamlfind := true;;

