class Status < ApplicationRecord
	belongs_to :user
	validates  :content, presence: :true, length: {minimum: 5, maximum: 1000}
	validates :user_id, presence: :true
end
