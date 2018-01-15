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
- [Scanlon's IIgs Assembly Programming](ftp://ftp.apple.asimov.net/pub/apple_II/documentation/programming/65816_gs/Apple%20IIGS%20Assembly%20Language%20Programming.pdf)
- [Programming the 65816 and 65xx family](https://apple2.gs/downloads/Programmanual.pdf)
- ["PEI Slam" fast SHR rendering](https://retrocomputing.stackexchange.com/questions/52/how-do-i-use-shadowed-memory-to-render-super-hi-res-quickly)
- [Changing ProDOS file types with Cadius](https://groups.google.com/forum/#!topic/comp.sys.apple2/dqcTdS9epdQ)
- [6502 opcode list](http://www.defence-force.org/computing/oric/coding/annexe_2/)
- [BrutalDeluxe GS/OS internals (VERY USEFUL)](http://brutaldeluxe.fr/documentation/gsos/Apple_IIgs_GSOS_internals_v1.pdf)