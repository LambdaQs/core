.PHONY: default ocaml haskell cleangen cleanall

default: haskell

ocaml: LambdaQs.cf
	bnfc -mbnfc.mk --ocaml-menhir LambdaQs.cf && make all

haskell: LambdaQs.cf
	bnfc -mbnfc.mk LambdaQs.cf && make all

cleangen: clean
	rm -f Par*.ml Par*.mli Lex*.ml Test* *.bak *.hi *.o

cleanall: cleangen
	rm -f *.mll *.mly *.{x,y} *.info *LambdaQs.{ml,hs} bnfc.mk BNFC_Util.ml DocLambdaQs.txt ErrM.hs

sinclude bnfc.mk
