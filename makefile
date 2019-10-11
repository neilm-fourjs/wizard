
PROJ=wizard
PROG=wizard1_sd
LIB=../g2_lib
BASE=$(PWD)
TRG=../njm_app_bin

export FGLIMAGEPATH=$(BASE)/pics:$(FGLDIR)/lib/image2font.txt
export FGLRESOURCEPATH=$(BASE)/etc
export FGLLDPATH=$(TRG):$(GREDIR)/lib

all: $(TRG)/$(PROG).42r

$(TRG)/$(PROG).42r: src/*.4gl src/*.per
	gsmake $(PROJ).4pw

update:
	git pull

run: $(TRG)/$(PROG).42r
	cd $(TRG) && fglrun $(PROG).42r

clean:
	gsmake -c $(PROJ).4pw
