class Vente < ApplicationRecord
  mount_uploaders :images, ImageUploader

end

