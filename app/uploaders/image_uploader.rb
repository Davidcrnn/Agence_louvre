class ImageUploader < CarrierWave::Uploader::Base
  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  # include CarrierWave::MiniMagick
  include Cloudinary::CarrierWave
  process :convert => 'png'
  storage :file
   def extension_white_list
    %w(jpg jpeg gif png)
  end

end
