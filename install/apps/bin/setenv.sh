#!/bin/sh
#
# ENVARS for Tomcat Omega environment
#

JAVA_HOME="/home/omega/java"
export JAVA_HOME

# CORE
JAVA_OPTS="-XX:+CMSClassUnloadingEnabled -XX:+UseConcMarkSweepGC  -Xms4000M -Xmx4000M"
#JAVA_OPTS="-XX:+CMSClassUnloadingEnabled -XX:+UseConcMarkSweepGC  -Xms8000M -Xmx8000M"
#JAVA_OPTS="-XX:+CMSClassUnloadingEnabled -XX:+UseConcMarkSweepGC  -Xms16000M -Xmx16000M"
export JAVA_OPTS

# PORTAL
#JAVA_OPTS="-XX:+CMSClassUnloadingEnabled -XX:+UseConcMarkSweepGC  -Xms4000M -Xmx4000M"
#JAVA_OPTS="-XX:+CMSClassUnloadingEnabled -XX:+UseConcMarkSweepGC  -Xms8000M -Xmx8000M"
#JAVA_OPTS="-XX:+CMSClassUnloadingEnabled -XX:+UseConcMarkSweepGC  -Xms16000M -Xmx16000M"
# export JAVA_OPTS

# TXS
#JAVA_OPTS="-XX:+CMSClassUnloadingEnabled -XX:+UseConcMarkSweepGC  -Xms4000M -Xmx4000M"
#JAVA_OPTS="-XX:+CMSClassUnloadingEnabled -XX:+UseConcMarkSweepGC  -Xms8000M -Xmx8000M"
#JAVA_OPTS="-XX:+CMSClassUnloadingEnabled -XX:+UseConcMarkSweepGC  -Xms16000M -Xmx16000M"
# export JAVA_OPTS

CATALINA_HOME="/home/omega/tomcat"
export CATALINA_HOME
