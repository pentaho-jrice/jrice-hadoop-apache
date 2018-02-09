#################################################################################################
# Build Spark Operations Jar
# 
# Created By Joe Rice - 2/7/2018
#################################################################################################

DIR="$(cd "$(dirname "$0")" && pwd)"

source $DIR/set-env.sh

PENTAHO_EE_GIT_REPO=/home/vagrant/git/pentaho-ee
PDI_ENGINE_OPERATIONS_HOME=$PENTAHO_EE_GIT_REPO/adaptive-execution/pdi-spark-app/pdi-spark-engine-operations
SOURCE_PDI_ENGINE_OPERATIONS_JAR_PATH=$PDI_ENGINE_OPERATIONS_HOME/target/pdi-spark-engine-operations-8.1.0.0-SNAPSHOT.jar

TARGET_AEL_PDI_ENGINE_DIR=/home/vagrant/ael/latest/data-integration/system/karaf/system/org/pentaho/adaptive/pdi-spark-engine-operations/$CURRENT_AEL_VERSION
TARGET_AEL_PDI_ENGINE_OPS_JAR_NAME=pdi-spark-engine-operations-$CURRENT_AEL_VERSION.jar
TARGET_AEL_PDI_ENGINE_OPS_JAR_PATH=$TARGET_AEL_PDI_ENGINE_DIR/$TARGET_AEL_PDI_ENGINE_OPS_JAR_NAME

cp $SOURCE_PDI_ENGINE_OPERATIONS_JAR_PATH $TARGET_AEL_PDI_ENGINE_OPS_JAR_PATH