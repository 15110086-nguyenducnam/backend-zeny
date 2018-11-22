class CreateNhaccs < ActiveRecord::Migration[5.2]
  def change
    create_table :nhaccs do |t|
      t.string :tennhacc
      t.string :diachi
      t.integer :sdt

      t.timestamps
    end
  end
end
