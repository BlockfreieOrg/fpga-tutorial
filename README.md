---
title: getting started with icestick
---

Getting started in fpga development is a daunting
task.  This guide is meant to get you up and running
with fpga's in no time.

1. Obtain an icestick

   Icesticks are relatively cheap fpga's and
   can be obtained from
   [lattice semiconductor](https://www.latticesemi.com/icestick) for about $25 dollars (us).

1. apt get

	`sudo apt-get install verilog icestorm fpga-icestorm gtkwav`

2. light on

   yosys -p "synth_ice40 -top top -blif build/blinky.blif" blinky.v
   arachne-pnr -d 1k -P tq144 -o build/blinky.asc -p blinky.pcf build/blinky.blif
   icepack build/blinky.asc build/blinky.bin

3. single blinker

4. pattern blinker

References :

[T-bird Signal on iCEstick](http://programfpgas.com/node/10)
