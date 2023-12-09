#!/bin/bash

# Variables
S3_BUCKET="vprofile-prod"
ARTIFACT_PATH="target/vprofile-${version}.war"
WEBAPPS_DIR="/var/lib/tomcat9/webapps"

# Copy artifact from S3 bucket to webapps directory
LATEST_OBJECT=$(aws s3api list-objects --bucket $S3_BUCKET --query 'Contents[].{Key: Key, LastModified: LastModified}' --output json | jq -r '.[] | "\(.LastModified)\t\(.Key)"' | sort -r | head -1 | cut -f2)
aws s3 cp s3://$S3_BUCKET/$LATEST_OBJECT $WEBAPPS_DIR


echo "Artifact copied succesfully"