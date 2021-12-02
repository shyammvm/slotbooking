class Venue < ApplicationRecord
    has_many :books, dependent: :destroy
    mount_uploader :image, VenueImageUploader
    has_one_attached :images
    

    validates :images, attached: true
    validates :title, presence: true
    validates :body, presence: true

end
