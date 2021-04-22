class CreateMembersPositions < ActiveRecord::Migration[6.1]
  def change
    create_table :members_positions do |t|
      t.references :member, null: false, foreign_key: true
      t.references :position, null: false, foreign_key: true

      t.timestamps
    end
  end
end
