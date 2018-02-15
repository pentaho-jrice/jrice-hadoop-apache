#################################################################################################
# Build Spark Operations Jar
# 
# Created By Joe Rice - 2/7/2018
#################################################################################################

DIR="$(cd "$(dirname "$0")" && pwd)"

source $DIR/set-env.sh

PENTAHO_EE_GIT_REPO=$GIT_PROJECTS_DIR/pentaho-ee
PDI_ENGINE_SPARK_HOME=$PENTAHO_EE_GIT_REPO/adaptive-execution/pdi-engines/pdi-engine-spark
SOURCE_PDI_ENGINE_SPARK_JAR_PATH=$PDI_ENGINE_SPARK_HOME/target/pdi-engine-spark-8.1.0.0-SNAPSHOT.jar

TARGET_AEL_PDI_ENGINE_DIR=$REMOTE_AEL_SERVER_AEL_HOME/data-integration/lib
TARGET_AEL_PDI_ENGINE_OPS_JAR_NAME=pdi-engine-spark-$CURRENT_AEL_VERSION.jar
TARGET_AEL_PDI_ENGINE_OPS_JAR_PATH=$TARGET_AEL_PDI_ENGINE_DIR/$TARGET_AEL_PDI_ENGINE_OPS_JAR_NAME

echo "."
echo "*********************************************************************************"
echo "   Deploying sSpark Operations Jar..."
echo "    - from:  $SOURCE_PDI_ENGINE_SPARK_JAR_PATH "
echo "    - to:  $TARGET_AEL_PDI_ENGINE_OPS_JAR_PATH "
echo "*********************************************************************************"

lib/scp-from-remote-to-local.sh $REMOTE_AEL_SERVER_HOSTNAME $REMOTE_AEL_SERVER_USERNAME  $REMOTE_AEL_SERVER_PASSWORD $SOURCE_PDI_ENGINE_SPARK_JAR_PATH $TARGET_AEL_PDI_ENGINE_OPS_JAR_PATH

$DIR/ael-clear-karaf-cash-remote.sh

echo .