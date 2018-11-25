class CreateApiKeys < ActiveRecord::Migration[5.2]
  def change
    create_table :api_keys do |t|
      t.text :token
      t.references :khachhang, foreign_key: true

      t.timestamps
    end
  end
end
