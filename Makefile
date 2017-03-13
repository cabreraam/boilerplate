#
# Makefile for idx_to_tiff
#
# Author:		Anthony Cabrera
# Date:			1/13/17
#
#

CC = clang
IDIR = ../include
CFLAGS = -Wall -Werror -I$(IDIR) -g

ODIR = ./obj
_OBJ = idx3_to_tiff.o main.o 
OBJ = $(patsubst %, $(ODIR)/%, $(_OBJ))

all: idx3_to_tiff
	@echo $(OBJ)

idx3_to_tiff: $(OBJ)
	@echo $@ ////// $<
	$(CC) $(CFLAGS) -o $@ $^ 

$(ODIR)/%.o: %.c
	@echo $@ ////// $<
	$(CC) $(CFLAGS) -o $@ -c $<

.PHONY: clean

clean:
	rm -f $(ODIR)/*.o *~ idx3_to_tiff
