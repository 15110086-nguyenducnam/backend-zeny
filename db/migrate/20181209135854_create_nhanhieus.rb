class CreateNhanhieus < ActiveRecord::Migration[5.2]
  def change
    create_table :nhanhieus do |t|
      t.string :ten
      t.text :mota
      t.references :loaisp, foreign_key: true

      t.timestamps
    end
  end
end
