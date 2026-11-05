SRC_DIR := src
OUT_DIR := out

SOURCES := $(wildcard $(SRC_DIR)/*.md)
OUTPUTS := $(patsubst $(SRC_DIR)/%.md, $(OUT_DIR)/%.html, $(SOURCES))

.PHONY: all check build test clean ci deps package

all: build

deps: node_modules

node_modules: package-lock.json
	npm ci
	@touch node_modules

$(OUT_DIR):
	@mkdir -p $(OUT_DIR)

$(OUT_DIR)/%.html: $(SRC_DIR)/%.md package-lock.json | $(OUT_DIR) node_modules
	@echo "  BUILD $< -> $@"
	@npm run --silent build -- $< $@

build: deps $(OUTPUTS)

check:
	@ls $(SRC_DIR)/*.md > /dev/null

test: build
	@npm test --silent

package: test
	npm pack

clean:
	rm -rf $(OUT_DIR) *.tgz

ci: clean deps check test package
