# == Schema Information
#
# Table name: maps
#
#  id          :bigint(8)        not null, primary key
#  name        :string           not null
#  contact_no  :string           not null
#  latitude    :string           not null
#  longitude   :string           not null
#  address     :text
#  loc_type    :boolean          default(FALSE)
#  description :text             not null
#  count       :integer
#  is_rescued  :boolean          default(FALSE)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Map < ApplicationRecord
  validates :name, presence: true
  validates :contact_no, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true
  validates :description, presence: true
  
end
