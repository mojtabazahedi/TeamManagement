class CreateTeamsMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :teams_members do |t|
      t.references :team, null: false, foreign_key: true
      t.references :member, null: false, foreign_key: true

      t.timestamps
    end
  end
end
