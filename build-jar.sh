#!/bin/bash

# this command creates the java arhcive file

jar cvfm lox.jar MANIFEST.MF -C bin .

# to run simply: java -jar lox.jar
