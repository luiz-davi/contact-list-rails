class Contact < ApplicationRecord

    belongs_to :user

    validates :nome, presence: true, length: { maximum: 35 }
    validates :phone, presence: true
    
end
