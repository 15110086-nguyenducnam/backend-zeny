class AddThongsoToSanpham < ActiveRecord::Migration[5.2]
  def change
    add_column :sanphams, :thongso, :text
  end
end
