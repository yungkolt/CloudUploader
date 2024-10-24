#!/bin/bash

# Check if AWS CLI is installed
if ! command -v aws &> /dev/null; then
    echo "AWS CLI not found. Please install it to use this tool."
    exit 1
fi

# Check if the correct number of arguments is provided
if [ "$#" -lt 1 ]; then
    echo "Usage: clouduploader /path/to/file.txt [s3-bucket-name]"
    exit 1
fi

# Assign variables from arguments
FILE_PATH=$1
BUCKET_NAME=${2:-default-bucket}

# Check if the file exists
if [ ! -f "$FILE_PATH" ]; then
    echo "Error: File not found: $FILE_PATH"
    exit 1
fi

# Upload the file to the S3 bucket
echo "Uploading $FILE_PATH to S3 bucket: $BUCKET_NAME..."
aws s3 cp "$FILE_PATH" s3://"$BUCKET_NAME"/

# Check if the upload was successful
if [ $? -eq 0 ]; then
    echo "File uploaded successfully!"
else
    echo "File upload failed."
    exit 1
fi





