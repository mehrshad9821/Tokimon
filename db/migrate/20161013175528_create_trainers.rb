class CreateTrainers < ActiveRecord::Migration
  def change
    create_table :trainers do |t|
      t.string :name
      t.string :email
      t.integer :level

      t.timestamps
    end
  end
end
