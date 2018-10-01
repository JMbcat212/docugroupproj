CC=g++
RM=rm -R
CPPFLAGS=-Wall

SRCS=main.cc othello.cc game.cc
OBJS=$(subst .cc,.o,$(SRCS))

all: build doc

build: game

game: $(OBJS)
	$(CC) $(CPPFLAGS) -o game $(OBJS)

depend: .depend

.depend: $(SRCS)
	$(RM) ./.depend
	$(CC) $(CPPFLAGS) -MM $^>>./.depend;

doc:
	@doxygen *.cc

clean:
	$(RM) $(OBJS) game
