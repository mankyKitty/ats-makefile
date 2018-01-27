.PHONY: test clean
.DEFAULT_GOAL := {{ project }}

PATSHOMEQ="$(PATSHOME)"
PATSCC=$(PATSHOMEQ)/bin/patscc
PATSOPT=$(PATSHOMEQ)/bin/patsopt
PATSCCFLAGS=-O2 -flto
cleanall::
{{ project }}: {{ project }}.dats ; \
   $(PATSCC) $(PATSCCFLAGS) -o $@ $< || echo $@ ": ERROR!!!"
cleanall:: ; $(RMF) {{ project }}

RMF=rm -f

clean:: ; $(RMF) *_?ats.c
cleanall:: clean

test:
	./{{ project }}
