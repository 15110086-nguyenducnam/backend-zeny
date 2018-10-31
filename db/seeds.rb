# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
loaisps = Loaisp.create([{ten: "Điện Thoại & Máy Tính Bảng"}, {ten: "Tivi & Thiết bị nghe nhìn"}, {ten: "Phụ Kiện & Thiết Bị Số"},
                      {ten: "Laptop & Thiết bị IT"}, {ten: "Máy Ảnh & Quay Phim"}, {ten: "Điện Gia dụng & Điện Lạnh"}, {ten: "Nhà Cửa Đời Sống"},
                      {ten: "Hàng Tiêu Dùng & Thực Phẩm"}, {ten: "Đồ chơi, Mẹ & Bé"}, {ten: "Làm Đẹp & Sức Khỏe"}, {ten: "Thời trang & Phụ kiện"},
                      {ten: "Thể Thao & Dã Ngoại"}, {ten: "Xe Máy, Ô tô, Xe Đạp"}])
admin = Admin.create(email: "admin@gmail.com", password: 123456)
