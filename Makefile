PANDOC=pandoc -t html5 --template=templates/default.shower --standalone --section-divs -V author="Tyr Chen"

OUTPUT_FOLDER=_build

ASSETS=assets
SLIDES=$(wildcard slides/*.md)
HTMLS=$(SLIDES:slides/%.md=$(OUTPUT_FOLDER)/%.html)

build: clean $(OUTPUT_FOLDER) copy-assets $(HTMLS)

clean:
	@rm -f _build/*.html

copy-assets:
	@rsync -arv $(ASSETS)/* $(OUTPUT_FOLDER)

$(OUTPUT_FOLDER):
	@mkdir -p $@

watch:
	@echo "Watching templates and slides changes..."
	@fswatch -o templates/ slides/ assets/custom | xargs -n1 -I{} make build

run:
	@http-server $(OUTPUT_FOLDER) -p 8000 -c-1

$(HTMLS):$(OUTPUT_FOLDER)/%.html:slides/%.md
		@echo "Creating slides $@ with file $<."
		-@$(PANDOC) $< -o $@

mv:
	@echo "mv file from snapshots to assets/images/$(TARGET)"
	@mv ~/snapshots/snapshot\ $(shell date +'%Y-%m-%d\ at\%l.%M')*.jpg $(ASSETS)/images/$(TARGET)
	@sips -Z 1600 $(ASSETS)/images/$(TARGET)

.PHONY: build copy-assets watch
