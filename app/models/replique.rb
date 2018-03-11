class Replique < ApplicationRecord

	scope :next, lambda {|id| where("id > ?",id).order("id ASC") }
	scope :prev, lambda {|id| where("id < ?",id).order("id DESC") }

    def next
      Replique.next(self.id).first
    end

    def prev
      Replique.prev(self.id).first
    end
end
