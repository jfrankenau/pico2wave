BIN = pico2wave
CFLAGS += -Dpicolangdir=\"$(PICOLANGDIR)\"
LDFLAGS += -lpopt -lttspico -lm
PREFIX ?= /usr

$(BIN): $(BIN).o
	$(CC) -o $@ $^ $(LDFLAGS)

$(BIN).o: $(BIN).c
	$(CC) $(CFLAGS) -c -o $@ $<

install: $(BIN)
	mkdir -p $(PREFIX)/bin
	cp $(BIN) $(PREFIX)/bin/

clean:
	@rm -rf $(BIN)
	@rm -rf $(BIN).o
