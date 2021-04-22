class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.string :firstname
      t.string :lastname
      t.date :birthday
      t.integer :number
      t.string :team

      t.timestamps
    end
  end
end
