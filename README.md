# ProducerConsumerThreads
Threaded producer and consumer threaded program used to print user input to the terminal. Makes use of mutexs, condition variables and structs.

Mainline acts as the **_producer thread_**, reading input from the user. This input is then passed to the next available and waiting **_consumer thread_** which handles the user input and sends it to a **_printer thread_** to be printed to the console.

The program makes use of _mutexs_, _condition variables_ and _structs_ to ensure shared resources are used properly and also that to ensure that a _race condition_ doesn't come into existence.


## Usage

To begin with compile printer.c
```
make
```

Run program
```
./printer
```


## Example

```bash
make 
gcc    -c -o printer.o printer.c
gcc -pthread printer.o  -lm -lcurses -o printer

./printer

Enter 'quit' to exit program...

Enter a string: string one

2: string one

Enter a string: hello

3: hello

Enter a string: foobar furey

1: foobar furey

Enter a string: gitya

2: gitya

Enter a string: quit
Goodbye!

```
