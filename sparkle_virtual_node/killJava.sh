#!/bin/bash

/bin/kill $( sudo /opt/jdk1.8.0_131/bin/jps | awk '/Master/ { print $1}' )
/bin/kill $( sudo /opt/jdk1.8.0_131/bin/jps | awk '/Worker/ { print $1}' )


