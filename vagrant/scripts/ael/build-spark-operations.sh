#!/bin/sh
#################################################################################################
# Build Spark Operations Jar
# 
# Created By Joe Rice - 2/7/2018
#################################################################################################

cd $GIT_PROJECTS_DIR/pentaho-ee/adaptive-execution/pdi-spark-app/pdi-spark-engine-operations

mvn clean package -DskipTests=true
