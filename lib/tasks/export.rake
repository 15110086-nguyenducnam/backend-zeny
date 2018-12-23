namespace :export do
  desc "Prints Country.all in a seeds.rb way."
  task :seeds_format => :environment do
    Sanpham.order(:id).all.each do |sanpham|
      bad_keys = ['created_at', 'updated_at', 'id']
      serialized = sanpham.serializable_hash.
                   delete_if{|key,value| bad_keys.include?(key)}
      puts "Sanpham.create(#{serialized})"
    end
  end
end