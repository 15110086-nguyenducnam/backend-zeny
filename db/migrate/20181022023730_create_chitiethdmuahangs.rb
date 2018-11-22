class CreateChitiethdmuahangs < ActiveRecord::Migration[5.2]
  def change
    create_table :chitiethdmuahangs do |t|
      t.float :soluong
      t.decimal :dongia
      t.references :sanpham, foreign_key: true
      t.references :hopdongmuahang, foreign_key: true

      t.timestamps
    end
  end
end
