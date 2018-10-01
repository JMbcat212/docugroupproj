CC=g++
RM=rm -f
CPPFLAGS=-Wall

SRCS=main.cc othello.cc game.cc
OBJS=$(subst .cc,.o,$(SRCS))

all: build archive

build: game

game: $(OBJS)
	$(CC) $(CPPFLAGS) -o game $(OBJS)

depend: .depend

.depend: $(SRCS)
	$(RM) ./.depend
	$(CC) $(CPPFLAGS) -MM $^>>./.depend;

archive:
	tar -cvf archive.tar *.cc *.h
	gzip archive.tar

clean:
	$(RM) $(OBJS) game