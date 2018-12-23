Swagger::Docs::Config.register_apis(
  {
    "1.0" =>  {
      # kiểu file dùng cho API
      api_extension_type: :json,
      # nơi xuất ra kết quả
      api_file_path: "public/apidocs",
      # URL base cho API
      base_path: "http://localhost:3000",
      # đặt là true nếu muốn xóa tất các các file kết quả json mỗi lần khởi động server
      clean_directory: true,
      # thêm các attributes khác
      attributes: {
        info: {
          "title" => "Your application title",
          "description" => "Rails API documention with Swagger UI.",
          "termsOfServiceUrl" => "",
          "contact" => ""
        }
      }
    }
  }
)