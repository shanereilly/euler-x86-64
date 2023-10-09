include ../../Makefile.inc

euler1: euler1.o
	$(CC) -o ../../$(OBJ_DIR)/$@ ../../$(OBJ_DIR)/$<

euler1.o : euler1.asm
	$(AS) $(ASFLAGS) $< -o ../../$(OBJ_DIR)/$@

