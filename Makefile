DIR := ~/.pandoc
FILES := github.css

.PHONY: all clean install uninstall FORCE
all: $(FILES)

github.css: FORCE
	wget https://gist.github.com/raw/2554919/github.css -O $@

clean:
	rm $(FILES)

install: $(FILES) $(DIR)
	cp $(FILES) $(DIR)/

$(DIR):
	mkdir $@
		
uninstall:
	rm $(addprefix $(DIR)/, $(FILES))

FORCE:
