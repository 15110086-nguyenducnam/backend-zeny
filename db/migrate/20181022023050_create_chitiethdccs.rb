class CreateChitiethdccs < ActiveRecord::Migration[5.2]
  def change
    create_table :chitiethdccs do |t|
      t.integer :soluong
      t.decimal :dongia
      t.references :hopdongcc, foreign_key: true
      t.references :sanpham, foreign_key: true

      t.timestamps
    end
  end
end
