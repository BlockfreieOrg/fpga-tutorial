.PHONY: clean
all: build/blinky.bin

build:
	mkdir build
build/blinky.blif: blinky.v blinky.pcf build
	yosys -p "synth_ice40 -top top -blif build/blinky.blif" blinky.v

build/blinky.asc: build/blinky.blif
	arachne-pnr -d 1k -P tq144 -o build/blinky.asc -p blinky.pcf build/blinky.blif

build/blinky.bin: build/blinky.asc
	icepack build/blinky.asc build/blinky.bin

clean:
	rm -rf build
