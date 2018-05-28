class PictureUploader < CarrierWave::Uploader::Base
 include Cloudinary::CarrierWave
version :locations_image do
    process :resize_to_fill => [700, 500]
  end

version :locations_show do
    process :resize_to_fill => [700, 500]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end
end
