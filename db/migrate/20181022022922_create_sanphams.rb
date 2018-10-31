class CreateSanphams < ActiveRecord::Migration[5.2]
  def change
    create_table :sanphams do |t|
      t.string :tensp
      t.references :loaisp, foreign_key: true

      t.timestamps
    end
  end
end
