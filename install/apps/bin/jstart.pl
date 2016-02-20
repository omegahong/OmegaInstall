#!/usr/bin/perl
#
# This script is to start java applications from the command line. It takes as input
#   - the root directory of the web application that contains the class to run 
# 	- a class to run that can be found within this webapps standard classpath
# 	- a list of arguments that will be passed through to the java program
# 
# Assumptions 
#   - All parameters must be passed in the order specified.
#   - It can be run in any unix like environment including Cygwin.
#   - The root directory passed in must be a standard web app directory structure. 
# 
# Sample usage
#   - perl jstart.pl /home/apps/myapp com.mydomain.RunnableClass 
# 
use strict;
use Cwd;

# -----------------------------------------------------------------------------
# Main execution
# -----------------------------------------------------------------------------

# change to the directory passed in 
my $rootDir = @ARGV[0];
print("Changing to directory $rootDir\n");
chdir $rootDir;
print("Current directory is " . getcwd . "\n");

# set delimeter according to platform
my $windir = $ENV{WINDIR};
my $delimeter=':';
if ($windir) {
	$delimeter=';';
}

# create a colon separated list of the jar dir
my $jarlist=`ls -m  WEB-INF/lib/*.jar`;;
$jarlist =~ s/\n//g;
$jarlist =~ s/\s*,\s*/$delimeter/g;
#print "Jar list is \n$jarlist\n\n";

# create classpath
my $classpath="WEB-INF/classes" . $delimeter . $jarlist;
#print "Classpath is \n$classpath\n";

# get the rest of the args and append them to be passed through to java program
my $args;
for (my $i=1; $i<@ARGV; $i++) {
	$args .= " " . $ARGV[$i];
}
#print "Args are $args\n";

# set the tomcat config file for auto
my $tomcatConfig = "-Dlog4j.configuration=log4j_auto.xml";

# execute the command,
# wrap classpath in quotes or cygwin won't like it
my $command="java $tomcatConfig -cp '$classpath' $args";
print "Executing command \n $command\n";
print "========================================\n";
print "Execution Started \n";
print "========================================\n";

system($command);

if ($? !=0) {
	print "\n";
	print "========================================\n";
	print "Execution failed. \n";
	print "========================================\n";
	exit 1;
}
else {
	print "\n";
	print "========================================\n";
	print "Execution completed \n";
	print "========================================\n";
	exit 0;
}



# -----------------------------------------------------------------------------
# Subroutines
# -----------------------------------------------------------------------------

#
# Returns absolute path to the directory that this script resides in.
# Deprecated as we will now get the directory from the command line. Keep 
# for reference and remove later. daryl 08/20/2008   
#sub getScriptDir {
#	my $scriptName = $0;
#
#	# if scriptName is not absolute, make it absolute
#	if ($scriptName !~ m/^\//) {
#		$scriptName = substr ($scriptName, 1);
#		$scriptName = getcwd . $scriptName;
#	}
#
#	# lop off the script name and return
#	return substr ($scriptName, 0, rindex($scriptName, "/"));
#}

