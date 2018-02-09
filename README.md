# mrbuffer
A small text editor for the 40 character buffer of the Apple IIgs I used to learn 65816 assembly.  

![mrbuffer](https://i.imgur.com/NafMhGf.gifv)

## Getting Started

### Requirements

I used [BrutalDeluxe's Cross-Dev Tools](http://brutaldeluxe.fr/products/crossdevtools/index.html): CADIUS for disk imaging and the Merlin32 assembler. We'll be building them from source since they are not large. 

- A *nix flavor would be helpful!
- GNU build tools
- Some patience (my scripts might not build everything right on your system)
- An Apple IIGS emulator of your preference + the appropriate ROM ([which you'll have to find](https://www.google.com/search?q=apple+iigs+rom+download))
  - The assemble script uses `gsplus`

**OS X Users:** Merlin has an issue with `a65816_Line.c:L2412` that I crudely patch with `sed`, so if you have issues look there first. Works for me on Sierra with the XCode build tools.

### Building

There are two scripts here which will get all the tools needed to assemble the game. 

```bash
./build_env.sh # Downloads and builds Cadius and Merlin
./assemble.sh  # Assemble and launch
```

The `assemble` script runs the source through Merlin32, then changes the ProDOS file kind to `S16`, an executable format that is used for GS/OS applications. `_FileInformation.txt` is what `cadius` uses to manage the ProDOS metadata for each record (since obviously this information can't be mapped to your computer's filesystem).

I also extracted the Merlin16 macros from the original images. I'm not using them yet but I imagine I will need to in order to implement quitting, etc. 

## References

There are a lot of good materials out there: here is what I used to make this. Additionally, thank you to the Apple IIGS Enthusiasts Facebook group and `#a2chat` over at `irc.a2central.com` for answering my questions.

- [IIgs Hardware Architecture](http://www.goldstarsoftware.com/applesite/Documentation/AppleIIgsHardwareReferenceManual.PDF)
  - p. 74 has a memory map
- [IIgs firmware reference](http://www.applelogic.org/files/GSFIRMWAREREF1.pdf)
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
- [SNES CPU overview, same CPU, nice insights](https://github.com/michielvoo/SNES/wiki/CPU)
- [SNES opcode list](http://wiki.metroidconstruction.com/doku.php?id=super:technical_information:asm_mnemonics)
- [65816 primer](http://softpixel.com/~cwright/sianse/docs/65816NFO.HTM)
- [Another 6502 reference, insightful](https://github.com/wiz-lang/wiz/wiki/Registers-and-Memory-(6502))
- [65816 interrupts guide](http://6502.org/tutorials/65c816interrupts.html)
