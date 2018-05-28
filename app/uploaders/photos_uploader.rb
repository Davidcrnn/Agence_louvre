class PhotosUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  version :locations_image do
    process :resize_to_fill => [700, 500]
  end
end
