# pon-gs
Apple IIgs simple pong game, with animation and sound. Written in 100% 658c16 assembly.

## Getting Started

### Requirements

- Some *nix flavor. Please don't open issues if you are using Windows.
- GNU build tools (`autoconf`, `gcc`, etc.)
- Basic understanding of C/C++ build issues, since you'll likely face some.
- An Apple IIGS emulator of your flavor + the appropriate ROM (which you will have to source for yourself)

### Building

There are two scripts here which will get all the tools needed to assemble the game. 

```bash
./build_env.sh # to grab utils
./assemble.sh  # to assemble the game
```