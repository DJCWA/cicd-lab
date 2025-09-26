#!/bin/bash
set -xe

# Copy WAR file from S3 bucket to Tomcat webapps
aws s3 cp s3://test-webappdeploymentbucket-jovalhdbibun/SpringBootHelloWorldExampleApplication.war \
  /usr/local/tomcat9/webapps/SpringBootHelloWorldExampleApplication.war

# Fix ownership
chown -R tomcat:tomcat /usr/local/tomcat9/webapps

