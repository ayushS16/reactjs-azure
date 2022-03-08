#!/bin/bash

#Create the artifacts bucket (this will store zipped lambda functions)
aws s3 mb s3://my-react-s3 --region ap-south-1