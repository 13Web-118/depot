require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  fixtures :products 
  # test "the truth" do
  #   assert true
  # end
  #字段不能为空
  test "product will be create" do
    product = Product.new(title: "test book title",
      description: "test book description",
      image_url: File.open("#{Rails.root}/test/fixtures/asserts/example.jpg"),
      price: "25")
    
    assert product.valid?
  end

  test "product attributes must not be empty" do
  	product = Product.new
  	assert product.invalid?
  	assert product.errors[:title].any?
  	assert product.errors[:description].any?
  	assert product.errors[:price].any?
  	assert product.errors[:image_url].any?
  end

  #价格不能小于0.01
  test "product price must be positive" do
  	product = Product.new(title:  "My Book Title",
  		description: "yyy",
  		image_url:  File.open("#{Rails.root}/test/fixtures/asserts/example.jpg")
  	)
  	product.price = -1
  	assert product.invalid?
  	assert_equal "must be greater than or equal to 0.01",
  		product.errors[:price].join(';')

  	product.price = 0
  	assert product.invalid?
  	assert_equal "must be greater than or equal to 0.01",
  		product.errors[:price].join(';')

  	product.price = 1
  	assert product.valid?
  end

  #图片URL格式必须合法
  def new_product(image_url)
  	Product.new(title: "My Book Title",
  		description: "yyy",
  		price:  1,
  		image_url: File.open("#{Rails.root}/test/fixtures/asserts/#{image_url}"))
  end

  #由于图片需要真实来源的图片，所以可以在里面放置相应格式的文件
  test "image url" do
  	ok = %w{ example.gif example.jpg example.png example.JPG example.jpg }
  	bad = %w{ example.doc example.gif.more }

  	ok.each do |name|
  		assert new_product(name).valid?,"#{name} shouldn't be invalid"
  	end

  	bad.each do |name|
  		assert new_product(name).invalid?,"#{name} shouldn't be valid"
  	end
  end

  #唯一性测试
  test "product is not valid without a unique title" do
    product = Product.new(title: products(:ruby).title,
      description: "yyy",
      price: 1,
      image_url: "fred.gif")
    assert !product.save
    assert_equal "has already been taken", product.errors[:title].join(';')
  end
end
