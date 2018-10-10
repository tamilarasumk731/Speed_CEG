# == Schema Information
#
# Table name: fishermen
#
#  id         :bigint(8)        not null, primary key
#  name       :string           not null
#  age        :integer
#  team_name  :string           not null
#  contact_no :string           not null
#  address    :text             not null
#  is_fishing :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Fisherman < ApplicationRecord
  validates :name, presence: true
  validates :team_name, presence: true
  validates :contact_no, presence: true
  validates :address, presence: true
  validates :is_fishing, presence: true
end
