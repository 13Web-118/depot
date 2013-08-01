#encoding: utf-8
Product.delete_all
User.delete_all
Category.delete_all
CategoryProduct.delete_all

User.create(name: 'admin',
  password: '118',
  password_confirmation: '118')
  
#====================================================================================

Category.create(title:'文学',
  parent_id:0)
  
Category.create(title:'管理',
  parent_id:0)
  
Category.create(title:'少儿',
  parent_id:0)
  
Category.create(title:'生活',
  parent_id:0)

Category.create(title:'计算机与互联网',
  parent_id:0)
  
Category.create(title:'小说',
  parent_id:1)
  
Category.create(title:'青春',
  parent_id:1)

Category.create(title:'青春文学',
  parent_id:1)

Category.create(title:'经济',
  parent_id:2)
  
Category.create(title:'金融与投资',
  parent_id:2)
  
Category.create(title:'儿童文学',
  parent_id:3)
  
Category.create(title:'科普',
  parent_id:3)
  
Category.create(title:'旅游/地图',
  parent_id:4)
  
Category.create(title:'家教/育儿',
  parent_id:4)
  
Category.create(title:'手工DIY',
  parent_id:4)
  
Category.create(title:'操作系统',
  parent_id:5)
  
Category.create(title:'编程语言',
  parent_id:5)
  
Category.create(title:'数据库',
  parent_id:5)
  
Category.create(title:'网络通信',
  parent_id:5)
  
Category.create(title:'网站制作',
  parent_id:5)
  
#====================================================================================
Product.create(title: 'CoffeeScript',
  description: 
    %{<p>
        CoffeeScript is JavaScript done right. It provides all of JavaScript's
	functionality wrapped in a cleaner, more succinct syntax. In the first
	book on this exciting new language, CoffeeScript guru Trevor Burnham
	shows you how to hold onto all the power and flexibility of JavaScript
	while writing clearer, cleaner, and safer code.
      </p>},
  image_url: File.new("#{Rails.root}/public/uploads/product/image/1.jpg"),    
  price: 36.00)

Product.create(title: 'Programming Ruby 1.9',
  description:
    %{<p>
        Ruby is the fastest growing and most exciting dynamic language
        out there. If you need to get working programs delivered fast,
        you should add Ruby to your toolbox.
      </p>},
  image_url: File.new("#{Rails.root}/public/uploads/product/image/2.jpg"),
  price: 49.95)

Product.create(title: 'Rails Test Prescriptions',
  description: 
    %{<p>
        <em>Rails Test Prescriptions</em> is a comprehensive guide to testing
        Rails applications, covering Test-Driven Development from both a
        theoretical perspective (why to test) and from a practical perspective
        (how to test effectively). It covers the core Rails testing tools and
        procedures for Rails 2 and Rails 3, and introduces popular add-ons,
        including Cucumber, Shoulda, Machinist, Mocha, and Rcov.
      </p>},
  image_url: File.new("#{Rails.root}/public/uploads/product/image/3.jpg"),
  price: 34.95)

Product.create(title: 'Debug It!',
  description: 
    %{<p> If you develop software, sooner or later you're going to discover 
      that it doesn't always behave as you intended. Working out why it's 
      misbehaving can be hard. Sometimes very hard. "Debug It " is here to 
      help All bugs are different: there is no silver bullet.</p> },
  image_url: File.new("#{Rails.root}/public/uploads/product/image/4.jpg"),
  price: 43)
  
Product.create(title: '牛津英汉双解小词典',
  description: 
    %{<p>《牛津英语小词典》第9版对词条作了修订，更新了内容，进行了重新设计。本词典是以《简明英语词典》（第11版）
      为基础编纂的系列词典之一。为编纂该词典，我们分析了收集自各种书籍、报刊、杂志以及因特网的数以亿计的英文词汇。本词典
      全面明晰地收录了当代英语的核心词汇，反映了英语的真实用法。为使释义更加明白易懂，本词典的释义词汇格外注意使用日常英
      语词汇，避免使用难词或术语化的词汇。</p>},
  image_url: File.new("#{Rails.root}/public/uploads/product/image/5.jpg"),
  price: 21)
  
Product.create(title: 'JaneEyre(简爱）',
  description: 
    %{<p>《简·爱》（Jane Eyre）是十九世纪英国著名的女作家夏洛蒂·勃朗特的代表作，人们普遍认为《简·爱》是夏洛
      蒂·勃朗特“诗意的生平写照”，是一部具有自传色彩的作品。讲述一位从小变成孤儿的英国女子在各种磨难中不断追求自由与尊严，
      坚持自我，最终获得幸福的故事。夏洛蒂·勃朗特、艾米莉·勃朗特、安妮·勃朗特和勃朗宁夫人构成那个时代英国妇女最高荣誉的完
      美的三位一体。</p>},
  image_url: File.new("#{Rails.root}/public/uploads/product/image/6.jpg"),
  price: 56)
  
Product.create(title: 'Gone With The Wind（乱世佳人）',
  description: 
    %{<p>《Gone With The Wind》之所以被众多读者熟悉，更大程度上得益于那部同名银幕旷世之作。甚至，也有许多
      人说电影超越了文学作品。究其根本，除了银幕的影画、音响魅力和导演演员的精湛演绎之外，还因为电影截取了作品最精华紧凑的情
      节，没有把生活的琐屑杂沓一一铺陈。然而，对小说《乱世佳人》的阅读，则常常会让读者不时激动澎湃的心情不断平复下来，让他们
      静静地等待着、观察着、体会着人物经年累月的变化和水到渠成的生命领悟。直到今天，依然有很多人在困顿失意的时刻，不断引用斯
      嘉丽激励自己的那句话，“不管怎么说，明天就是另外一天了”，从中汲取那桀骜不驯的任性和偏执，从而继续固执地追寻目标，哪怕头
      破血流。</p>},
  image_url: File.new("#{Rails.root}/public/uploads/product/image/7.jpg"),
  price: 43)

Product.create(title: 'The Adventures of Tom Sawyer',
  description: 
    %{<p>Mark Twain (1835-1910) was an American humorist, satirist, social critic, lecturer
       and novelist. He is mostly remembered for his classic novels The Adventures of 
       Huckleberry Finn and The Adventures of Tom Sawyer.This is a beautifully-designed new 
       edition of Mark Twain's classic THE ADVENTURES OF TOM SAWYER.</p>},
  image_url: File.new("#{Rails.root}/public/uploads/product/image/8.jpg"),
  price: 32)
  
Product.create(title: '城北黑帮（张磊 著）',
  description: 
    %{<p>B市城北的几股恶势力在此消彼长的地盘斗争中，孙勇、李明亮、张伟迅速在道上崛起，最后顺利打掉颇具规模的张四宝团伙，
      在城北占下一席之地。此后，各个团伙纷争不断，孙勇亡命，李明亮潜逃，孤掌难鸣的张伟联合忠哥进入毒品圈，很快控制了该市一半以上
      的毒品交易。就在张伟一步步地成长为道上的大哥的时候，一场意外的邂逅最冬让他走向深渊……</p>},
  image_url: File.new("#{Rails.root}/public/uploads/product/image/9.jpg"),
  price: 23)
  
Product.create(title: '史蒂夫•乔布斯传(Steve Jobs:A Biography)(乔布斯唯一正式授权传记中文版） [平装]',
  description: 
    %{<p>《史蒂夫·乔布斯传》是乔布斯唯一授权的官方传记。最新书摘，第25、31、41章内容已经发布，详情请见内容详细页‘文摘’字段内
      容。此前也曾有不少关于乔布斯的传记，但均未获得本人授权。简体中文版由中信出版社初版，10月9日消息，创新天才乔布斯近日辞世。这位伟大CEO
      留给了世人一份最后的礼物——一本由他本人以及其家人唯一正式授权的传记《史蒂夫•乔布斯传》，该传记简体中文版将由中信出版社出版。《史蒂夫·乔布斯传》
      由著名作家沃尔特•艾萨克森（Walter Isaacson）在过去两年与乔布斯面对面交流40多次、对乔布斯100多位家庭成员、朋友、竞争对手和同事的采访
      的基础上撰写而成。艾萨克森是原《时代周刊》主编、CNN董事长兼首席执行官。撰写过爱因斯坦传记、基辛格传记、富兰克林传记等畅销书籍。</p>},
  image_url: File.new("#{Rails.root}/public/uploads/product/image/10.jpg"),
  price: 35)
  
Product.create(title: '从零开始:淘宝网开店一本通(附CD光盘1张) [平装]',
  description: 
    %{<p>《从零开始:淘宝网开店一本通》针对准备在网上开店做生意的新手，或已在网上开店但缺少经营技巧与经验的用户，从零开始，系统并全面
      地讲解了在淘宝网上开店的方法与准备、网店推广与经营的业务流程，以及网店运营思路与操作技巧等内容。全书共分为14章，内容包括在淘宝刚上开店
      的各种准备事项、货源的寻找途径与经验、物流的选择方法与技巧、售前售后的服务技巧、淘宝网上开店流程与申请方法、店铺的设计与装修、商品照片的
      拍摄与美化、店铺的管理与营销途径、网店的宣传与推广以及网店的安全保障等知识。<p>},
  image_url: File.new("#{Rails.root}/public/uploads/product/image/11.jpg"),
  price: 23)
  
Product.create(title: 'Head First Software Development',
  description: 
    %{<p>Even the best developers have seen well-intentioned software projects fail -- often 
      because the customer kept changing requirements, and end users didn't know how to use 
      the software you developed. Instead of surrendering to these common problems, let Head 
      First Software Development guide you through the best practices of software development.</p>},
  image_url: File.new("#{Rails.root}/public/uploads/product/image/12.jpg"),
  price: 30.73)
  
Product.create(title: 'Software Endgames',
  description: 
    %{<p> Take Control of Your Project in the Final Stage of Software Development 
      In software development, projects are won or lost during the project endgame-that 
      final stage of software development between release for testing and release to customers.
      Software Endgames: Eliminating Defects, Controlling Change, and the Countdown to On-Time Delivery
      presents the core strategies for delivering working software to your customers. Focusing solely on 
      the endgame, the book provides hard-won, hands-on strategies and practices for delivering real value.</p>},
  image_url: File.new("#{Rails.root}/public/uploads/product/image/13.jpg"),
  price: 23)
  
Product.create(title: 'The Art of Software Testing: Second Edition',
  description: 
    %{<p>The classic, landmark work on software testing The hardware and software 
      of computing have changed markedly in the three decades, this book's powerful 
      underlying analysis east to understood.</p>},
  image_url: File.new("#{Rails.root}/public/uploads/product/image/14.JPG"),
  price: 219.99)
  
Product.create(title: 'Ruby on Rails For Dummies',
  description: 
    %{<p>Use this free and easy programming language for e-commerce sites and blogs
      If you need to build Web and database applications quickly but you don't dream in computer code, 
      take heart! Ruby on Rails was created for you, and this book will have you up and running in no 
      time. The Ruby scripting language and the Rails framework let you create full-featured Web applications 
      fast. It's even fun!</p>},
  image_url: File.new("#{Rails.root}/public/uploads/product/image/15.JPG"),
  price: 21.45)
  
Product.create(title: 'Fact Extraction For Ruby On Rails Platform',
  description: 
    %{<p>In the field of software engineering, software architecture plays an important role particularly in 
      areas of critical and large scale software system development and over the years it has evolved as an 
      important sub-discipline within the field of software engineering. However, software architecture is still 
      an emerging discipline mainly attributed by the lack of standardized way for architectural representation 
      and also due to lack of analysis methods that can determine if the intended architecture translates into correct 
      implementation during the software development [HNS00]. </p>},
  image_url: File.new("#{Rails.root}/public/uploads/product/image/16.JPG"),
  price: 45.99)
  
Product.create(title: 'Rails for PHP Developers',
  description: 
    %{<p>As a PHP developer, you have some great tools for developing web applications. Ruby on Rails is another 
      key tool to add to your web development toolbox. Rails is a high-level web development framework that emphasizes 
      high productivity and clean code. However, the Ruby language and Rails framework take a different approach 
      from the way many PHP developers write applications.</p>},
  image_url: File.new("#{Rails.root}/public/uploads/product/image/17.jpg"),
  price: 31.98)
  
Product.create(title: 'Crafting Rails Applications',
  description: 
    %{<p>Rails 3 is a huge step forward. You can now easily extend the framework, change its behavior, and replace 
      whole components to bend it to your will, all without messy hacks. This pioneering book is the first resource 
      that deep dives into the new Rails 3 APIs and shows you how use them to write better web applications and make 
      your day-to-day work with Rails more productive.</p>},
  image_url: File.new("#{Rails.root}/public/uploads/product/image/18.JPG"),
  price: 29.41)
  
Product.create(title: 'Entornos de Desarrollo Integrados Libres',
  description: 
    %{<p>Emacs, VI, VIM, Netbeans, Ruby on Rails, General Architecture for Text Engineering, Proyecto Mono<br />
       by Source Wikipedia</p>},
  image_url: File.new("#{Rails.root}/public/uploads/product/image/19.JPG"),
  price: 12.72)
  
Product.create(title: 'Hobo at Work',
  description: 
    %{<p>Overview<br />
     The definitive guide to the Hobo rapid application development framework for Ruby on Rails.</p>},
  image_url: File.new("#{Rails.root}/public/uploads/product/image/20.JPG"),
  price: 9.99)
  
i=0

while  i<100 do
  i = i+1
  Product.create(title: 'SampleBook'+String(i),
  description: 
    %{<p>
        CoffeeScript is JavaScript done right. It provides all of JavaScript's
  functionality wrapped in a cleaner, more succinct syntax. In the first
  book on this exciting new language, CoffeeScript guru Trevor Burnham
  shows you how to hold onto all the power and flexibility of JavaScriptrake
  while writing clearer, cleaner, and safer code.
      </p>},
  image_url: File.new("#{Rails.root}/public/uploads/product/image/1.jpg"),    
  price: 36.00)
end
  
#===========================================================================================
CategoryProduct.create(product_id:1,
  category_id: 17)
  
CategoryProduct.create(product_id:2,
  category_id: 20)

CategoryProduct.create(product_id:3,
  category_id: 16)

CategoryProduct.create(product_id:4,
  category_id: 17)

CategoryProduct.create(product_id:5,
  category_id: 12)
  
CategoryProduct.create(product_id:6,
  category_id: 8)

CategoryProduct.create(product_id:7,
  category_id: 8)
  
CategoryProduct.create(product_id:8,
  category_id: 11)
  
CategoryProduct.create(product_id:9,
  category_id: 6)
  
CategoryProduct.create(product_id:10,
  category_id: 6)
  
CategoryProduct.create(product_id:11,
  category_id: 20)
  
CategoryProduct.create(product_id:12,
  category_id: 17)
  
CategoryProduct.create(product_id:13,
  category_id: 16)

CategoryProduct.create(product_id:14,
  category_id: 17)
  
CategoryProduct.create(product_id:15,
  category_id: 20)
  
CategoryProduct.create(product_id:16,
  category_id: 20)

CategoryProduct.create(product_id:17,
  category_id: 17)

CategoryProduct.create(product_id:18,
  category_id: 20)

CategoryProduct.create(product_id:19,
  category_id: 20)

CategoryProduct.create(product_id:20,
  category_id: 20)
