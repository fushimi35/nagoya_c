class RecipeImageUploader < CarrierWave::Uploader::Base
  # アップロードファイルの保存場所を指定
	storage :file

	#アップロードファイルの保存するディレクトリを指定
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

	#デフォルト表示する画像を指定。「app/assets/images」に保存した写真が使える。
  def default_url
    'sample.jpg'
  end

	#アップロードするファイルの許可する拡張子を指定
  def extension_whitelist
    %w(jpg jpeg gif png)
  end
end
