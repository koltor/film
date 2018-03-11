class Episode < ApplicationRecord
  belongs_to :saison
  mount_uploader :video, VideoUploader

  scope :next, lambda {|id| where("id > ?",id).order("id ASC") }
	scope :prev, lambda {|id| where("id < ?",id).order("id DESC") }

    def next(saison_id)
    	episode = Episode.where(saison_id: saison_id)
      episode.next(self.id).first
    end

    def prev(saison_id)
    	episode = Episode.where(saison_id: saison_id)
      episode.prev(self.id).first
    end
end
