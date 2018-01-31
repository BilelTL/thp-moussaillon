class CreateMoussaillons < ActiveRecord::Migration[5.1]
  def change
    create_table :moussaillons do |t|
      t.string :first_name
      t.integer :age
      t.string :likeness

      t.timestamps
    end
  end
end
