class Saison < ApplicationRecord
  belongs_to :manga
  has_many :episodes ;
end
