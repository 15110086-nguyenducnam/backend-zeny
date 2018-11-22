class CreateLoaikhs < ActiveRecord::Migration[5.2]
  def change
    create_table :loaikhs do |t|
      t.string :tenloaikh
      t.float :chietkhau

      t.timestamps
    end
  end
end
