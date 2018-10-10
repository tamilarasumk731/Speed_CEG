# == Schema Information
#
# Table name: diseases
#
#  id           :bigint(8)        not null, primary key
#  name         :string           not null
#  medicines    :text             not null
#  symptoms     :text             not null
#  prevention   :text             not null
#  disease_type :string           not null
#  when         :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Disease < ApplicationRecord

  validates_uniqueness_of :name, presence: true
  validates :medicines, presence: true
  validates :symptoms, presence: true
  validates :prevention, presence: true
  validates :disease_type, presence: true
  validates :when, presence: true  
end
