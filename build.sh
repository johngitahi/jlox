#!/bin/bash

#directory variables
SRC_DIR="src"
BIN_DIR="bin"
PACKAGE_PREFIX="com.craftinginterpreters.lox."

#check if argument for main class supplied
if [ $# -eq 0 ]; then
    echo "Usage: $0 <class-name>"
    echo "Example: $0 Lox"
    exit 1
fi

MAIN_CLASS="${PACKAGE_PREFIX}$1"

# create the bin directory if it does not exist
mkdir -p $BIN_DIR

# compile
echo #compiling java files..."
javac -d $BIN_DIR $SRC_DIR/com/craftinginterpreters/lox/*.java

# check if compilation was successful
if [ $? -eq 0 ]; then
    echo "compilation successful."

    # run the program
    echo "running $MAIN_CLASS ..."
    java -cp $BIN_DIR $MAIN_CLASS
else
    echo "compilation failed."
fi
