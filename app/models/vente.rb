class Vente < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :user
  validates :title, presence: true
  validates :description, presence: true
  validates :surface, presence: true
  validates :price, presence: true
end

