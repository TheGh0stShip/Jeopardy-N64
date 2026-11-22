PYTHON ?= python3
N64DK ?= n64dk
TOOLCHAIN_DIR ?= $(N64DK_TOOLCHAIN)
BUILD ?= build

.PHONY: all extract code main rom verify tracker tracker-check status clean
all: rom

extract:
	@test -n "$(BASEROM)" || { echo "usage: make extract BASEROM=path/to/Jeopardy.z64" >&2; exit 2; }
	$(PYTHON) tools/build.py extract --rom "$(BASEROM)" --build "$(BUILD)"

code main rom:
	$(PYTHON) tools/build.py build --build "$(BUILD)" --n64dk "$(N64DK)" $(if $(TOOLCHAIN_DIR),--toolchain-dir "$(TOOLCHAIN_DIR)",)

verify: rom tracker tracker-check

tracker:
	$(PYTHON) tools/generate_tracker_progress.py

tracker-check:
	$(PYTHON) tools/generate_tracker_progress.py --check

status:
	@$(PYTHON) -c 'import json; p=json.load(open("decomphub.progress.json")); [print("{}: {}/{} {}".format(t["label"], t["measurement"]["completed"], t["measurement"]["total"], t["measurement"]["unit"])) for t in p["tracks"]]'

clean:
	$(PYTHON) tools/build.py clean --build "$(BUILD)"
