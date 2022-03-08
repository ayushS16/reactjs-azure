#!/bin/bash

#Create the artifacts bucket (this will store zipped lambda functions)
aws s3api head-bucket --bucket ${artifacts_bucket} 2>/dev/null 
if [ $? -ne 0 ]; then
    echo "Artifacts bucket does not exist, creating bucket: ${artifacts_bucket}"
    aws s3 mb s3://${artifacts_bucket}
    if [ $? -ne 0 ]; then
        echo "Could not create bucket ${artifacts_bucket}. Deployment aborted"
        exit 1
    fi
fi