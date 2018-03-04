class Manga < ApplicationRecord
	mount_uploader :image, ImageUploader;
	mount_uploader :background, BackgroundUploader;

	has_many :saisons;
end
