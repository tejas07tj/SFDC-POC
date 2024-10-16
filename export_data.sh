#!/bin/bash

# Set the path to the Data Loader CLI executable 
# testing...
#123
data_loader_path="/path/to/data_loader_cli/bin"
123566


# Set the path to the configuration file
config_file_path="/path/to/config/file"

# Set the output file name and path
output_file_path="/path/to/output/csv/file"

# Set the Salesforce object you want to query
object_name="Account"

# Set the SOQL query to execute
soql_query="SELECT Id, Name, BillingStreet, BillingCity, BillingState, BillingPostalCode, BillingCountry FROM Account"

# Set the batch size for the data export
batch_size="500"

# Construct the command to run the Data Loader CLI
command="java -jar ${data_loader_path}/data-loader.jar config=${config_file_path} extractSOQL=${soql_query} object=${object_name} operation=extract outputcsv=${output_file_path} batchsize=${batch_size}"

# Run the command and capture the output
output=$(eval $command)

# Print the output to the console 
#test

echo "$output"
