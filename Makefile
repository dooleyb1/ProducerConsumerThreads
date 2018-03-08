CC=gcc
program_NAME := printer
program_C_SRCS := $(wildcard *.c)
program_C_OBJS := ${program_C_SRCS:.c=.o}
program_OBJS := $(program_C_OBJS) 

# our default target
all: $(program_NAME)

# our default dependecies - build rule is derived
$(program_NAME): $(program_OBJS)
	$(CC) -pthread $(program_OBJS) -lm -lcurses -o $(program_NAME)

clean:
	@- $(RM) $(program_NAME)
	@- $(RM) $(program_OBJS)

