class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.integer :sex
      t.string :email
      t.string :address
      t.string :phon_no

      t.timestamps
    end
  end
end
