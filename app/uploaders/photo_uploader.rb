class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  version :ventes_image do
    process :resize_to_fill => [700, 500]
  end
end
