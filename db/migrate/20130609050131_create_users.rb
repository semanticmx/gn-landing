class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :FNAME
      t.string :LNAME
      t.string :EMAIL
      t.integer :CP

      t.timestamps
    end
  end
end
