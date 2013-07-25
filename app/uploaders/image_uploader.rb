# encoding: utf-8
#require "digest/md5"

class ImageUploader < CarrierWave::Uploader::Base
  #include CarrierWave::MiniMagick
  storage :file

 def store_dir
    "uploads/#{model.class.to_s.underscore}/image/#{model.id}"
  end

  # TODO: 此处要想办法，开启了 open-uri 下载的因为文件名的问题无法通过验证
  # Allow image file extensions
  def extension_white_list
    %w(jpg jpeg gif png)
  end

  # Override the filename of the uploaded files:
  #def filename
  #  if original_filename
      # current_path 是 Carrierwave 上传过程临时创建的一个文件，有时间标记，所以它将是唯一的
  #    @name ||= Digest::MD5.hexdigest(File.dirname(current_path))
  #    "#{@name}.#{file.extension}"
  #  end
  #end
end
