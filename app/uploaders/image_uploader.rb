class ImageUploader < CarrierWave::Uploader::Base

include Cloudinary::CarrierWave

version :ventes_image do
    process :resize_to_fill => [700, 500]
  end

version :ventes_show do
    process :resize_to_fill => [700, 500]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

end
