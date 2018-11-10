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

class Book < ApplicationRecord
  has_many :purchased_books, dependent: :destroy
  has_many :users, through: :purchased_books
end
