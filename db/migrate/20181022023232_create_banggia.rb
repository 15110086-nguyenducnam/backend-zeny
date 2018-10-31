class CreateBanggia < ActiveRecord::Migration[5.2]
  def change
    create_table :banggia do |t|
      t.decimal :gia
      t.references :sanpham, foreign_key: true

      t.timestamps
    end
  end
end
