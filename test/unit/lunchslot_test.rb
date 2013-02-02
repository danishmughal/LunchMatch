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

require 'test_helper'

class LunchslotTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
