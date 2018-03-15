class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.integer :person_id

      t.timestamps
    end
    add_index :activities, :person_id
  end
end
