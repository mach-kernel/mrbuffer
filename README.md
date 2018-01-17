# pon-gs
Apple IIgs simple pong game, with animation and sound. Written in 100% 658c16 assembly.

## Getting Started

### Requirements

- Some *nix flavor. Please don't open issues if you are using Windows.
- GNU build tools (`autoconf`, `gcc`, etc.)
- Basic understanding of C/C++ build issues, since you'll likely face some.
- An Apple IIGS emulator of your flavor + the appropriate ROM (which you will have to source for yourself)
  - The assemble script uses `gsplus`

### Building

There are two scripts here which will get all the tools needed to assemble the game. 

```bash
./build_env.sh # to grab utils
./assemble.sh  # to assemble the game
```

The `assemble` script runs the assembly source through Merlin32, then changes the ProDOS file kind to `S16`, an executable format that is used for GS/OS applications. `_FileInformation.txt` is what `cadius` uses to manage the ProDOS metadata for each record (since obviously this information can't be mapped to your computer's filesystem).

## References

There are a lot of good materials out there: here is what I used to make this game.

- [IIgs Hardware Architecture](http://www.goldstarsoftware.com/applesite/Documentation/AppleIIgsHardwareReferenceManual.PDF)
  - p. 74 has a memory map
- [IIgs firmware reference](http://www.applelogic.org/files/GSFIRMWAREREF1.pdf)
  - Importantly, overview on bank $00, D $0000
- [Scanlon's IIgs Assembly Programming](ftp://ftp.apple.asimov.net/pub/apple_II/documentation/programming/65816_gs/Apple%20IIGS%20Assembly%20Language%20Programming.pdf)
  - Tremendously useful reference for QuickDraw and some tools
- [Programming the 65816 and 65xx family](https://apple2.gs/downloads/Programmanual.pdf)
  - Official WDC manual.
- ["PEI Slam" fast SHR rendering](https://retrocomputing.stackexchange.com/questions/52/how-do-i-use-shadowed-memory-to-render-super-hi-res-quickly)
- [Changing ProDOS file types with Cadius](https://groups.google.com/forum/#!topic/comp.sys.apple2/dqcTdS9epdQ)
- [6502 opcode list](http://www.defence-force.org/computing/oric/coding/annexe_2/)
- [65816 opcode list](http://www.intel-assembler.it/portale/5/65816_guide/opcode_reference.asp)
- [BrutalDeluxe GS/OS internals (VERY USEFUL)](http://brutaldeluxe.fr/documentation/gsos/Apple_IIgs_GSOS_internals_v1.pdf)
- [Apple II 6502 for beginners](http://www.appleoldies.ca/anix/Using-6502-Assembly-Language-by-Randy-Hyde.pdf)
  - Has practical examples for reading user input, etc.
- [System monitor reference](http://apple2.info/wiki/index.php?title=System_Monitor)
  - This is the humbling moment I take back every bad thing I ever said about GDB in my life ever. 
- [SNES CPU overview, same CPU, nice insights](https://github.com/michielvoo/SNES/wiki/CPU)
- [SNES opcode list](http://wiki.metroidconstruction.com/doku.php?id=super:technical_information:asm_mnemonics)
- [65816 primer](http://softpixel.com/~cwright/sianse/docs/65816NFO.HTM)
- [Another 6502 reference, insightful](https://github.com/wiz-lang/wiz/wiki/Registers-and-Memory-(6502))