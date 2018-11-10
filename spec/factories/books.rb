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

FactoryBot.define do
  factory :book do
    title { Faker::Book.unique.title }
    author { Faker::Book.author }
  end
end
