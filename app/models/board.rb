class Board < ApplicationRecord
    belongs_to :user
    has_many :tasks
    validates :title, presence: true, length: { minimum: 4, maximum: 40 }
    validates :content, presence: true, length: { minimum: 10 }
  end
