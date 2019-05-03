class CSV {
  static String s1 = 'Category,ProductName/Brand,Price,In stock vs out of stock(1=in, 0 =out),Image URL\n' +
      'Juice,ENDURO GRAPEFRUIT TA,0.69,1,"https://images-na.ssl-images-amazon.com/images/I/51lEwrCOQxL._SY450SX338_SY450_CR,0,0,338,450_PIbundle-8,TopRight,0,0_SX338_SY450_CR,0,0,338,450_SH20_.jpg"\n' +
      'Juice,ENDURO ORNG APRIC SI,0.69,1,https://images-na.ssl-images-amazon.com/images/I/91fkXwzfnJL._SL1500_.jpg\n' +
      'Juice,ENDURO CRANBERRY SIN,0.69,1,https://pics.drugstore.com/prodimg/509533/900.jpg\n' +
      'Juice,ENDURO LEMON ORNG SI,0.69,1,https://cdnimg.webstaurantstore.com/images/products/main/7850/82523/realemon-100-lemon-juice-8-48-oz-bottles-case.jpg\n' +
      'Juice,ENDURO POLYNESIAN PU,0.69,1,https://i5.walmartimages.com/asr/2674337c-fb85-4cf0-9683-71172f6a37c2_1.1e304240e75464430c0218368e0486ec.jpeg?odnWidth=282&odnHeight=282&odnBg=ffffff\n' +
      'Cookies,"Nabisco Oreo, Chips Ahoy!, & Golden Oreo Sweet Treats Variety Cookie Pack, 23.3 Oz., 30 Count",6.98,1,https://i5.walmartimages.com/asr/519bb1de-0f80-4197-8bc0-d8e75a56b143_2.0412ae8f204e31b6bb921f932e558269.jpeg?odnWidth=undefined&odnHeight=undefined&odnBg=ffffff\'Cookies,"Pepperidge Farm Classic Collection Cookies, 13.25 oz. Box",5.98,1,https://i5.walmartimages.com/asr/829df827-e13e-4aa8-b531-ebc0198ce7f3_1.a71ba5386895b10bdc3790a327a8d077.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF\n' +
      'Cookies,Meiji Hello Panda Strawberry Cream Biscuits 2 oz,1.69,1,https://target.scene7.com/is/image/Target/GUEST_cbd19eb4-7d36-452a-8993-586468571046?wid=488&hei=488&fmt=pjpeg\n' +
      'Cookies,Glico Pocky Strawberry Cream Covered Biscuit Sticks 2.47 oz,1.99,1,https://cdn.shopify.com/s/files/1/1520/9644/products/1_f880935c-3e62-4429-98e6-ae30102b9da4_1024x1024.jpg?v=1551212886\n' +
      'Cookies,Glico Pocky Chocolate Banana - 2.47oz,1.99,0,https://www.glico.com/assets/images/small/Pocky-ChocoBanana-70g.png\n' +
      'Vegetables,Beefsteak Tomatoes,2.99,1,https://cdn.shopify.com/s/files/1/2918/4630/products/image_3_c9a27eae-0a72-4bb2-9687-4034cc857d10.jpg?v=1527364228\n' +
      'Vegetables,Farmers Market Tomatoes,3.99,1,https://previews.123rf.com/images/erostunova/erostunova1606/erostunova160600228/58665022-ox-heart-or-bull-s-heart-tomatoes-at-organic-farmers-market.jpg\n' +
      'Vegetables,Farmer\'s Market Onion Yellow 3 Lb Usa,2.99,1,http://cnt.gianteagle.com/legacy/productimagesroot/DJ/0/1011440.jpg\n' +
      'Vegetables,Produce Watermelon Radish,3.99,0,https://www.specialtyproduce.com/sppics/1788.png\n' +
      'Vegetables,Celery Celery Hearts,3.99,1,https://www.dudafresh.com/hs-fs/hubfs/images-2017/p-main-celery-hearts-2.png?width=600&name=p-main-celery-hearts-2.png\n' +
      'Chips,Doritos potato chips (Spicy Nachos),1.68,1,https://www.doritos.com/sites/doritos.com/files/2018-08/new-spicy-nacho.png\n' +
      'Chips,Doritos potato chips (Nacho Cheese),1.68,1,https://www.doritos.com/sites/doritos.com/files/2018-08/new-nacho-cheese.png\n' +
      'Chips,Hua-yuan Vegetable Cracker,1.54,1,https://www.hyfoods.com.tw/wp-content/uploads/2017/04/18.jpg\n' +
      'Chips,Hua-yuan Potato chips (Oyster Omlete),1.47,0,https://img.shop.com/Image/270000/275600/275616/products/1735627369__400x400__.jpg\n' +
      'Chips,Pringles Cheedar Cheese,1.75,1,https://images.kglobalservices.com/www.pringles.com_us/en_us/product/kic-32077/prod_img-1395466_ched_low_res_png.png\n' +
      'Fruit,"Apples Gala - Extra Fancy, Organic",2.99,1,https://images-na.ssl-images-amazon.com/images/I/81VKH7OKfaL._SL1500_.jpg\n' +
      'Fruit,Chiquita Apple Bites,4.99,1,https://media.fooducate.com/products/images/180x180/514723CE-D53F-874B-4B98-B2E4BF1A3098-3706.jpeg\n' +
      'Fruit,Produce Baby Burro Bananas,1.79,1,http://cnt.gianteagle.com/legacy/productimagesroot/DJ/3/1015523.jpg\n' +
      'Fruit,Produce Baby Neno Banana,1.99,0,https://i.pinimg.com/474x/ff/b3/83/ffb3830b28eaddb66b7bd0fc1efa66ba--small-banana-fruta-fresca.jpg\n' +
      'Fruit,Oranges Navel,5.99,1,https://www.halegroves.com/blog/wp-content/uploads/2018/05/HG17_VALENCIABEAUTY-5.jpg\n' +
      'Fruit,Produce Blueberries 6 oz,3.99,0,https://az836796.vo.msecnd.net/media/image/product/en/medium/0003338322228.jpg"\n';

  static String s2 = 'Category,ProductName/Brand,Price,"In stock vs out of stock(1=in, 0 =out)",Image URL\n' +
  'Juice,ENDURO CONCORD GRAPE,0.69,1,https://images-na.ssl-images-amazon.com/images/I/41myK-5I3TL._SY355_.jpg\n' +
  'Juice,ENDURO GRAPEFRUIT/TA,1.09,1,https://images-na.ssl-images-amazon.com/images/I/81QDB7tae1L.jpg\n' +
  'Juice,ENDURO ORANGE/APRICO,1.09,1,https://d2lnr5mha7bycj.cloudfront.net/product-image/file/large_91c523ae-ae6f-4f7b-bdf0-03386a3badc4.jpg\n' +
  'Juice,ENDURO CRANBERRY/PAS,1.09,1,https://i.pinimg.com/236x/1d/d3/23/1dd3235ec5f0eb1dedadf9c989ba0124--liver-detoxification-gaps-diet.jpg\n' +
  'Juice,ENDURO LEMON/ORANGE,1.09,1,https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSIOfadqMss8cLDNABy6YJGJ6zXbNgH7bgjLTqzEwpyXJB0oOirg\n' +
  'Cookies,Meiji Yan Yan Strawberry Cream Cracker Stick with Dip - 2oz,0.69,1,https://target.scene7.com/is/image/Target/GUEST_c2b8e9db-08ce-4bc1-b224-7dc7c744608a?wid=488&hei=488&fmt=pjpeg\n' +
  'Cookies,Chips Ahoy! Thins Bites Fudge Dipped Cookies - 6oz,2.99,1,https://target.scene7.com/is/image/Target/GUEST_0359cebe-33e4-4593-9dac-d2be2b8c8745?wid=488&hei=488&fmt=pjpeg\n' +
  'Cookies,Oreo Chocolate Sandwich Cookies - Family Size - 19.1oz,3.59,1,https://images-na.ssl-images-amazon.com/images/I/51kA42YcM9L._SY355_.jpg\n' +
  'Cookies,"Pepperidge Farm Santa Cruz Soft Baked Oatmeal Raisin Cookies, 8.6oz Bag",2.99,1,https://i5.walmartimages.com/asr/74137e2b-ca16-43d4-873d-829212902f7b_1.957562187cfac50b4c3fe279acddc8cd.jpeg\n' +
  'Cookies,Pepperidge Farm Tahoe White Chocolate Macadamia Cookies - 7.2oz Bag,2.99,1,https://www.pepperidgefarm.com/wp-content/uploads/sites/3/2017/02/00014100075226CR.png\n' +
  'Vegetables,Cucumber Cucumber,0.59,1,https://cdn1.medicalnewstoday.com/content/images/articles/283/283006/cucumber-slices.jpg\n' +
  'Vegetables,Birds Eye Chef\'s Favorites Roasted Red Potatoes,2.79,1,https://www.birdseye.com/wp-content/uploads/2017/05/birds-eye-steamfresh-chef-s-favorites-lightly-sauced-roasted-red-potatoes-with-oven-roasted-garlic-butter-sauce.jpg\n' +
  'Vegetables,Produce Yukon Gold Potato,1.29,1,https://www.burpee.com/dw/image/v2/ABAQ_PRD/on/demandware.static/-/Sites-masterCatalog_Burpee/default/dw35f19051/Images/Product%20Images/prod000856/prod000856.jpg?sw=320&sh=378&sm=fit\n' +
  'Vegetables,Fresh Beans - long flat - USA,5.99,0,https://www.specialtyproduce.com/sppics/609.png\n' +
  'Vegetables,Cut \'N Clean Greens Collard Greens - Cut & Clean Spinach,2.99,1,https://d2lnr5mha7bycj.cloudfront.net/product-image/file/large_bc1bcb94-50cb-4c74-98e4-02036c73329c.jpeg\n' +
  'Chips,Lays potato chips (classic),1.68,0,https://www.fritolay.com/images/default-source/blue-bag-image/lays-classic.png?sfvrsn=bd1e563a_2\n' +
  'Chips,Lays potato chips (Chile Limon),1.68,1,https://www.fritolay.com/images/default-source/blue-bag-image/lays-chile-limon.png?sfvrsn=a11e563a_2\n' +
  'Chips,Lays potato chips (barbeque),1.68,1,https://www.fritolay.com/images/default-source/blue-bag-image/lays-barbecue.png?sfvrsn=591e563a_6\n' +
  'Chips,Shrimp flavor potato chips (original),1.65,1,https://s.newtalk.tw/album/news/88/591d771af3a40.jpg\n' +
  'Chips,Shrimp flavor potato chips (spicy),1.65,0,https://pbs.twimg.com/media/DAFT-t2V0AAP7qV.jpg\n' +
  'Fruit,Fresh Lemon,0.89,1,https://sc01.alicdn.com/kf/UT89Bf_X5dbXXagOFbXp/Fresh-Lemons.jpg\n' +
  'Fruit,Produce Blood Orange,1.00,1,https://theveglife.com/wp-content/uploads/2014/01/blood-oranges.jpg\n' +
  'Fruit,Farmer\'s Market Premium Red Seedless Grape,3.99,1,https://cdn.shopify.com/s/files/1/0206/9470/files/crimson_seedless_grapes_pick_of_the_week_harris_farm.jpg?v=1555395110\n' +
  'Fruit,Fresh Cotton Candy Grapes,3.99,1,https://grapery.biz/images/cotton-candy/cotton-candy-grapes-label.jpg\n' +
  'Fruit,Produce Blueberries 18 oz,5.99,1,https://d2ln0cvn4pv5w2.cloudfront.net/unsafe/1024x800/filters:quality(100):max_bytes(200000):fill(white)/http://dcmzfk78s4reh.cloudfront.net/1442945070370.jpg\n';
}