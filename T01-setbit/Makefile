.PHONY: clean
all: build/setbit.bin

build:
	mkdir build
build/setbit.blif: setbit.v tiny.pcf build
	yosys -p "synth_ice40 -top top -blif build/setbit.blif" setbit.v

build/setbit.asc: build/setbit.blif
	arachne-pnr -d 1k -P tq144 -o build/setbit.asc -p tiny.pcf build/setbit.blif

build/setbit.bin: build/setbit.asc
	icepack build/setbit.asc build/setbit.bin

upload: build/setbit.bin
	iceprog build/setbit.bin
clean:
	rm -rf build
