s3_file = "#{::Rails.root.to_s}/config/s3.yml"
if File.exist?(s3_file)
  AMAZON_S3_CREDENTIALS = s3_file
else
  AMAZON_S3_CREDENTIALS = { 
    :access_key_id => '',
    :secret_access_key => ''
  }
end
