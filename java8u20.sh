#!/usr/bin/env bash
#
# usage: java develop environment

export JAVA_HOME=/usr/local/java8u20
export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
export PATH=$PATH:$JAVA_HOME/bin
