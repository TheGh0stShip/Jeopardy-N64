PYTHON ?= python3
N64DK ?= n64dk
TOOLCHAIN_DIR ?= $(HOME)/.cache/n64dk-lab/toolroot
ROM ?=

SOURCES := $(shell find src asm -type f \( -name '*.c' -o -name '*.h' -o -name '*.s' \) 2>/dev/null)
LINK_INPUTS := link/units.tsv config/layout.json config/n64dk.toml config/functions.toml \
	$(wildcard config/run/symbols/*.txt) $(SOURCES)

.PHONY: all extract project verify clean distclean

all: build/jeopardy.z64

extract:
	@test -n "$(ROM)" || { echo 'usage: make extract ROM=/path/to/Jeopardy! (USA).z64'; exit 2; }
	$(PYTHON) tools/extract_rom.py --rom "$(ROM)" --out extracted/project

project: build/link-project/.prepared

build/link-project/.prepared: $(LINK_INPUTS) tools/prepare_link_project.py
	$(PYTHON) tools/prepare_link_project.py --root . --out build/link-project
	@touch $@

build/jeopardy.z64: extracted/project/baserom.z64 build/link-project/.prepared tools/build_rom.py
	N64DK="$(N64DK)" TOOLCHAIN_DIR="$(TOOLCHAIN_DIR)" \
		$(PYTHON) tools/build_rom.py --root . --project extracted/project \
		--source build/link-project --build build/relink --out $@

verify: build/jeopardy.z64
	@printf '%s  %s\n' c5bcf3eff6bcdd9e7846ce5fd5db3095db9c58ed $< | sha1sum -c -

clean:
	rm -rf build

distclean: clean
	rm -rf extracted
