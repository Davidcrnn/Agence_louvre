class Vente < ApplicationRecord
  mount_uploaders :attachements, AttachementsUploader
end

