require "google/cloud/storage"

project_id        = ENV_VAR['GCP_H2_K8S_PROJECT_ID'] # Google Cloud project ID
bucket_name       = ENV_VAR['GCP_H2_K8S_APPS_BUCKET'] # Google Cloud Storage bucket name
local_file_path   = ENV_VAR['GCP_H2_K8S_LOCAL_FILE_PATH'] # Path to local file to upload
storage_file_path = ENV_VAR['GCP_H2_K8S_STORAGE_FILE_PATH'] # Path to store the file in Google Cloud Storage

storage = Google::Cloud::Storage.new project_id: project_id
bucket  = storage.bucket bucket_name

file = bucket.create_file local_file_path, storage_file_path

puts "Uploaded #{file.name}"
