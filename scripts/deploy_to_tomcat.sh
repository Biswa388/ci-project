#!/bin/bash
# Auto-deploy WAR to Tomcat (assumes Tomcat at /opt/tomcat)
WAR_FILE=$(ls target/*.war 2>/dev/null | head -n1)
if [ -z "$WAR_FILE" ]; then
  echo "No WAR file found in target/. Build the project first."
  exit 1
fi
TOMCAT_DIR=${TOMCAT_DIR:-/opt/tomcat}
if [ ! -d "$TOMCAT_DIR" ]; then
  echo "Tomcat directory $TOMCAT_DIR not found. Set TOMCAT_DIR or install Tomcat."
  exit 1
fi
cp "$WAR_FILE" "$TOMCAT_DIR/webapps/"
echo "Deployed $WAR_FILE to $TOMCAT_DIR/webapps/"
