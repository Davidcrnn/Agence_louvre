class Vente < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :user
  validates :titre, presence: true
  validates :description, presence: true
  validates :surface, presence: true
  validates :price, presence: true
  validates :name, presence: true

end

