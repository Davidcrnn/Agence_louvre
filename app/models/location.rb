class Location < ApplicationRecord
  attr_accessor :images
  mount_uploaders :images, ImagesUploader
  has_many :images
end
