# == Schema Information
#
# Table name: purchased_books
#
#  id         :bigint(8)        not null, primary key
#  user_id    :bigint(8)        not null
#  book_id    :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :purchased_book do
    
  end
end
