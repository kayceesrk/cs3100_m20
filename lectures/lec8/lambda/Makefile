build: lambda

lambda: lambda.byte

%.native: src/*.*
	@ocamlbuild $@

%.byte: src/*.*
	@ocamlbuild -tag debug $@

clean:
	@ocamlbuild -clean

test: lambda.byte
	@./lambda.byte test.lambda
