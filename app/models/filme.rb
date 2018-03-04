class Filme < ApplicationRecord
	mount_uploader :image, ImageUploader
	mount_uploader :background, BackgroundUploader
	mount_uploader :video, VideoUploader
end
