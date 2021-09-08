class PhotosUploader < CarrierWave::Uploader::Base
  # Подключим RMagick, чтобы можно было менять размер автарок
  # и делать миниатюрные версии
  include CarrierWave::RMagick

  # Файлы хранятся в спец. папке проекта локально
  storage :file

  # Папка, в которой будут храниться все наши загруженные файлы
  # например, uploads/avatar/avatar/1
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Мы разрешаем для загрузки только файлы с расширением картинок
  def extension_white_list
    %w(jpg jpeg gif png webp)
  end
end
