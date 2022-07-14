default: ocaml

ocaml: LambdaQs.cf
	bnfc -mbnfc.mk --ocaml-menhir LambdaQs.cf && make all

haskell: LambdaQs.cf
	bnfc -mbnfc.mk LambdaQs.cf && make all

cleangen: clean
	rm -f Par*.ml Par*.mli Lex*.ml Test* *.bak

sinclude bnfc.mk
