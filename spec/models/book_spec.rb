# frozen_string_literal: true

# == Schema Information
#
# Table name: books
#
#  id         :bigint(8)        not null, primary key
#  user_id    :integer
#  title      :string(255)
#  author     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Book, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
end
