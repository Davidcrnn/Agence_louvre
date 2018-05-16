class Location < ApplicationRecord
  attr_accessor :images
  mount_uploaders :images, ImagesUploader
end
