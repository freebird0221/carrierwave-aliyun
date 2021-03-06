require 'carrierwave/storage/aliyun'
require 'carrierwave/storage/aliyun_file'
require 'carrierwave/aliyun/bucket'
require 'carrierwave/aliyun/version'
require 'carrierwave/aliyun/configuration'

CarrierWave::Uploader::Base.send(:include, CarrierWave::Aliyun::Configuration)

if CarrierWave::VERSION <= '0.11.0'
  require 'carrierwave/processing/mime_types'
  CarrierWave::Uploader::Base.send(:include, CarrierWave::MimeTypes)
  CarrierWave::Uploader::Base.send(:process, :set_content_type)
end
