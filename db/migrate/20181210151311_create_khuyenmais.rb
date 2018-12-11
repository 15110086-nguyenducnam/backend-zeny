class CreateKhuyenmais < ActiveRecord::Migration[5.2]
  def change
    create_table :khuyenmais do |t|
      t.references :sanpham, foreign_key: true
      t.datetime :ngaybd
      t.datetime :ngaykt

      t.timestamps
    end
  end
end
