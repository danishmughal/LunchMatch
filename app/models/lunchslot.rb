# == Schema Information
#
# Table name: lunchslots
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  start_time :datetime
#  end_time   :time
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Lunchslot < ActiveRecord::Base
  # attr_accessible :title, :body

  belongs_to :user

  attr_accessible :user_id, :start_time, :end_time


end