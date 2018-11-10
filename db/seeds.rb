require 'factory_bot_rails'

ActiveRecord::Base.transaction do
  books = FactoryBot.create_list(:book,50)
  users = FactoryBot.create_list(:user,10)

  id = 0
  users.each do |user|
    id += 1
    FactoryBot.create(:purchased_book, user: user, book_id: id)
    id += 1
    FactoryBot.create(:purchased_book, user: user, book_id: id)
    id += 1
    FactoryBot.create(:purchased_book, user: user, book_id: id)
  end
end



