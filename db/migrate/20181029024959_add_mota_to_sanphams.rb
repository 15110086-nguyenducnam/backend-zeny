class AddMotaToSanphams < ActiveRecord::Migration[5.2]
  def change
    add_column :sanphams, :mota, :text
  end
end
