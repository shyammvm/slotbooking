CarrierWave.configure do |config|
    config.storage                             = :gcloud
    config.gcloud_bucket                       = 'your-bucket-name'    # Better fetch this from environment variables
    config.gcloud_bucket_is_public             = true
    config.gcloud_authenticated_url_expiration = 600
    config.gcloud_content_disposition          = 'attachment'          # or you can skip this
    
    config.gcloud_attributes = {
      expires: 600
    }
    
    config.gcloud_credentials = {
      gcloud_project: 'gcp-project-name',                              # Better fetch this from environment variables
      gcloud_keyfile: 'path-to-gcp-keyfile.json'                       # Better fetch this from environment variables
    }
  end