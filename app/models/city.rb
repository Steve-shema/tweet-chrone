class City < ApplicationRecord
    validates :content, presence: true
    
    validates :content, length: { in: 2..140 }
end
