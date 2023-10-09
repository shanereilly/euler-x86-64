include ../../Makefile.inc

euler2: euler2.o
	$(CC) -o ../../$(OBJ_DIR)/$@ ../../$(OBJ_DIR)/$<

euler2.o : euler2.asm
	$(AS) $(ASFLAGS) $< -o ../../$(OBJ_DIR)/$@

