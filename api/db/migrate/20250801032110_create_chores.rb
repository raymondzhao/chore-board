class CreateChores < ActiveRecord::Migration[8.0]
  def change
    create_table :chores do |t|
      t.string :name
      t.text :description
      t.json :schedule

      t.timestamps
    end
  end
end
