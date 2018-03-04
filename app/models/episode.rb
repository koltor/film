class Episode < ApplicationRecord
  belongs_to :saison
  mount_uploader :video, VideoUploader
end
