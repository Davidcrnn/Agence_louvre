class Vente < ApplicationRecord

  attr_accessor :pictures
  mount_uploaders :pictures, PicturesUploader
  validates_presence_of :pictures

  belongs_to :user, optional: true
  validates :titre, presence: true
  validates :description, presence: true
  validates :surface, presence: true
  validates :price, presence: true
  validates :top, inclusion: { in: [ true, false ] }


end

