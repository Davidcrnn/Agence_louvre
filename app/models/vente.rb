class Vente < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  mount_uploaders :images, ImagesUploader

  belongs_to :user, optional: true
  validates :titre, presence: true
  validates :description, presence: true
  validates :surface, presence: true
  validates :price, presence: true
  validates :name, presence: true

end

