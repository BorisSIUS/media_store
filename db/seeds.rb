Media.destroy_all

cat_pics = [ "https://cloudfront-eu-central-1.images.arcpublishing.com/prisa/IPZM424KYBEH7IVUKNQZETWHVU.jpg" , "https://img.webmd.com/dtmcms/live/webmd/consumer_assets/site_images/article_thumbnails/other/cat_relaxing_on_patio_other/1800x1200_cat_relaxing_on_patio_other.jpg, https://undark.org/wp-content/uploads/2020/02/GettyImages-1199242002-1-scaled.jpg" , "https://cdn.mos.cms.futurecdn.net/VSy6kJDNq2pSXsCzb6cvYF.jpg" , "https://www.pasadenastarnews.com/wp-content/uploads/2019/04/A471529_Alice_b-1.jpg" , "https://img.webmd.com/dtmcms/live/webmd/consumer_assets/site_images/article_thumbnails/reference_guide/outdoor_cat_risks_ref_guide/1800x1200_outdoor_cat_risks_ref_guide.jpg" , "https://miro.medium.com/max/11520/0*mOpFDG1u_8pLUD0p" , "https://img.huffingtonpost.com/asset/5e848c4825000056010586d9.jpeg?ops=1778_1000" , "https://static.nationalgeographic.co.uk/files/styles/image_3200/public/cat-collars-28306_cbm9631.jpg?w=1600&h=900" , "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRyl-uNmkYtXBGchLq1DxKMU2cBsbpCdOkypQ&usqp=CAU" , "https://images.squarespace-cdn.com/content/v1/55c945e0e4b04386fb9f8162/1531837146897-RJA7PBBKEMGJWGAGDA2B/ke17ZwdGBToddI8pDm48kLkXF2pIyv_F2eUT9F60jBl7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0iyqMbMesKd95J-X4EagrgU9L3Sa3U8cogeb0tjXbfawd0urKshkc5MgdBeJmALQKw/cute-3252251.jpg?format=2500w" , "https://cdn.vox-cdn.com/thumbor/ysBC51TJlZVcPE8duPnEW1iR7NU=/0x0:2841x1171/1400x933/filters:focal(1807x402:2261x856):no_upscale()/cdn.vox-cdn.com/uploads/chorus_image/image/65958141/Screen_Shot_2019_07_18_at_4.16.52_PM.0.png" , "https://cdn.shopify.com/s/files/1/0638/6243/products/Furry_Cat1_CLIPPED_1024x1024.jpg?v=1588859325" , "https://technabob.com/blog/wp-content/uploads/2019/03/creepy_cat_mask_2.jpg" , "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRoI0dSsprAdytdx1_-rfCxYaFONrshnjd9Ew&usqp=CAU" , "https://1.bp.blogspot.com/-JGt_Pu1iw8o/XXjHvGYsiGI/AAAAAAAAEOM/IsvRXc60FM4mj7wPu2rMNHwJQ2To1h68gCLcBGAsYHQ/s1600/IMG_1524.jpg" , "https://pbs.twimg.com/media/D1ggCpAW0AELTlt.jpg:large" , "https://getscopedm8katie.files.wordpress.com/2014/11/smiling-kitty.gif" , "https://i.ytimg.com/vi/bnviOZmB1Fo/maxresdefault.jpg" , "https://hdwallpapers.cat/wallpaper/it-a-cat-weird-cute-ugly-funny-animals-8iYx.jpg" , "https://live.staticflickr.com/3292/3070566834_5e6a4e8a25_b.jpg" , "https://www.sciencealert.com/images/11174630606_7f353a58b8_k.jpg" , "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRTHzmUCq5CA1Gcw1jhKS_A5Uu2VN5FessAUg&usqp=CAU" ]

20.times do 
    Media.create(title: Faker::Creature::Cat.breed , description: Faker::Lorem.sentence(word_count: 14, supplemental: true, random_words_to_add: 7) , price: Faker::Number.decimal(l_digits: 2) , url: cat_pics.sample)
end

10.times do
    User.create(email: Faker::Name.first_name + "@yopmail.com", password: "123123")
end

User.create(email: "bobo@yopmail.com", password: "123123")

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
