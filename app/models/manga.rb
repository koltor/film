class Manga < ApplicationRecord
	mount_uploader :image, ImageUploader;
	mount_uploader :background, BackgroundUploader;

	has_many :saisons;

	scope :next, lambda {|id| where("id > ?",id).order("id ASC") }
	scope :prev, lambda {|id| where("id < ?",id).order("id DESC") }

    def next
      Manga.next(self.id).first
    end

    def prev
      Manga.prev(self.id).first
    end
end
