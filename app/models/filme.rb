class Filme < ApplicationRecord
	mount_uploader :image, ImageUploader
	mount_uploader :background, BackgroundUploader
	mount_uploader :video, VideoUploader

	scope :next, lambda {|id| where("id > ?",id).order("id ASC") }
	scope :prev, lambda {|id| where("id < ?",id).order("id DESC") }

    def next
      Filme.next(self.id).first
    end

    def prev
      Filme.prev(self.id).first
    end
end
