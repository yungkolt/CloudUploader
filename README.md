# CloudUploader CLI

CloudUploader is a simple Bash-based CLI tool that allows users to upload files to an AWS S3 bucket with a seamless experience.

## Features
- Quick and easy file uploads to AWS S3.
- Simple CLI interface for seamless integration into scripts or command line usage.
- Optional argument for specifying an S3 bucket (defaults to a pre-configured bucket).
- Error handling for missing files and failed uploads.

## Prerequisites
- AWS CLI must be installed and configured with credentials (`aws configure`).
- A valid S3 bucket in your AWS account.

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yungkolt/CloudUploader.git
   cd CloudUploader
