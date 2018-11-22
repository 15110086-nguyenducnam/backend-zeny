class RemoveEmailFromKhachhang < ActiveRecord::Migration[5.2]
  def change
    remove_column :khachhangs, :email
  end
end
