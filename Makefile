include Makefile.inc

SUBDIRS = $(shell find $(SRC_DIR) -type "d" -name 'euler*')

.PHONY: subdirs $(SUBDIRS)

subdirs: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@

clean:
	rm $(OBJ_DIR)/*.o

