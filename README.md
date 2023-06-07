# Simple Network Protocol using NASM

This project demonstrates a basic implementation of a network protocol using NASM (Netwide Assembler). The protocol showcases a simple client-server interaction, where the client sends a "Hello, server!" message, receives an acknowledgment message from the server, and then sends a "Goodbye!" message before terminating the program.

Please note that this project is purely educational and serves as a starting point for understanding how NASM can be used to interact with a network. It is not suitable for real-world applications and lacks the complexity and error handling necessary for a production-ready network protocol.

## Prerequisites

To run this project, you need the following:

- NASM (Netwide Assembler)
- Linux operating system

## Usage

1. Clone this repository to your local machine:

```shell
git clone https://github.com/Aganow/Network-Protocol.git
```

2. Navigate to the project directory:

```shell
cd network-protocol
```

3. Assemble the NASM source file using the following command:

```shell
nasm -f elf protocol.asm -o protocol.o
```

4. Link the object file using the following command:

```shell
ld protocol.o -o protocol
```

5. Run the executable:

```shell
./protocol
```

## Customization

Feel free to modify the NASM source code (protocol.asm) to experiment with different messages or add more functionality. However, please remember that this project is meant for educational purposes, and any modifications should be made with that in mind.

## License

This project is licensed under the [MIT License](LICENSE).

## Acknowledgments

This project was created as a demonstration of NASM assembly language programming and does not rely on any external libraries or frameworks.

## Disclaimer

This project is provided as-is without any warranty or guarantee. The author is not responsible for any damages or liabilities arising from the use of this project.
