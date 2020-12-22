def cli(cmd, region: nil, profile: nil, output: 'text')
  cmd += " --output #{output}"
  cmd += " --region #{region}"   unless region.nil?
  cmd += " --profile #{profile}" unless profile.nil?
  `aws #{cmd}`
end

def get_bucket_logging(bucket:, profile:)
  cli("s3api get-bucket-logging --bucket #{bucket}", profile: profile)
end

def list(query: nil, profile:)
  cmd  = 's3api list-buckets'
  cmd += " --query \"#{query}\"" unless query.nil?
  cli(cmd, profile: profile)
end

# query example:
# 'Buckets[?starts_with(Name, `some_name`) == `true`].Name'
bucket_list = list(query: 'Buckets[].Name').split(/\s/)
bucket_list.each do |name|
  puts "[#{name}] --> #{get_bucket_logging(bucket: name)}"
end
