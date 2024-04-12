# CrapOS

CrapOS is a simple and utterly useless operating system that does nothing but print "Hello, World!" to the screen. It's a fun project to learn about bootloaders, assembly programming, and creating basic operating systems.

## Prerequisites

To build and run CrapOS, you'll need the following software installed on your system:

- NASM (Netwide Assembler)
- QEMU (Machine emulator and virtualizer)

On Ubuntu, you can install these packages using the following commands:

```bash
sudo apt-get update
sudo apt-get install nasm qemu-system-x86
```

## Building CrapOS

1. Clone this repository or download the source code.
2. Open a terminal and navigate to the project directory.
3. Assemble the bootloader using NASM:

```bash
nasm -f bin bootloader.asm -o bootloader.bin
```

4. Create a disk image file for CrapOS:

```bash
dd if=/dev/zero of=crapOS.img bs=512 count=2880
```

5. Transfer the bootloader to the disk image:

```bash
dd if=bootloader.bin of=crapOS.img conv=notrunc
```

## Running CrapOS

You can run CrapOS using QEMU, a machine emulator and virtualizer. Open a terminal and run the following command:

```bash
qemu-system-x86_64 -fda crapOS.img -nographic
```

This will start QEMU in headless mode (without a graphical interface) and boot CrapOS from the disk image. You should see the "Hello, World!" message printed to the terminal.

After the bootloader halts the system, you can exit QEMU by pressing `Ctrl+C` in the terminal window.


> [!WARNING]
> CrapOS is a fun project and should not be used for any serious purpose. It's an educational exercise and a testament to the futility of software development. Use at your own risk, and don't expect any actual functionality beyond the "Hello, World!" message.
