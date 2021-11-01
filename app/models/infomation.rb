class Infomation < ApplicationRecord
  belongs_to :user
  attachment :image
end
