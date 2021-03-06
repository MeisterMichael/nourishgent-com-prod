# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

helpers = ActionController::Base.helpers

default_password = ENV['DEFAULT_PASSWORD'] || 'Test123'

User.destroy_all
SwellMedia::Category.destroy_all
SwellMedia::Article.destroy_all

bio = <<STRING
Hi, glad to know you were here. I'm Michael, newbie nutrition blogger. I like to go anywhere to hunting some food and share with other. About taste, benefit, and where you can findout a good place to eat.
STRING
short_bio = bio

admin_user = User.create( name: 'nourishgent', email: 'meister@spacekace.com', first_name: 'Michael', last_name: 'Ferguson', status: 'active', role: 'admin', password: default_password, short_bio: short_bio, bio: bio, properties: { "facebook_id" => 'nourishgent', "twitter_id" => 'nourishgent', "pinterest_id" => 'nourishgent', "instagram_id" => 'nourishgent', "avatar_large" => nil } )


food			= SwellMedia::Category.create( status: 'active', availability: 'anyone', name: 'Food' )
fitness		= SwellMedia::Category.create( status: 'active', availability: 'anyone', name: 'Fitness' )
hacks			= SwellMedia::Category.create( status: 'active', availability: 'anyone', name: 'Hacks' )
# favorites	= SwellMedia::Category.create( status: 'active', availability: 'anyone', name: 'Favorite Things' )


content = <<HTML
<p>
Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.
</p>
<p>
The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.
</p>
HTML
description = 'Caffeine is a staple is most adult diets, and coffee is the source of choice in the USA, but hundreds of years of Asian monks and samurais drinking matcha must mean something.'
article = SwellMedia::Article.create( user: admin_user, publish_at: 3.week.ago, title: 'Are you a Coffee Addict or a Matcha Monk?', subtitle: '', description: description, content: content, category: food, avatar: 'http://cdn1.nourishgent.com/blog/matcha_monk_350x350.jpg', cover_path: 'http://cdn1.nourishgent.com/blog/matcha_monk_1200x800.jpg', avatar_urls: { featured: 'http://cdn1.nourishgent.com/blog/matcha_monk_320x450.jpg' }, tags: ['GreenTea','Tea','Matcha','Energy','Natural'], featured: 1 )
puts article.url




content = <<HTML

HTML
description = 'This recipe gives you all the satisfaction of a nice bowl of instant ramen, but with a good portion of veggies and nutritious protein rich broth.'
article = SwellMedia::Article.create( user: admin_user, publish_at: 2.week.ago, title: "Ramen, Zoodle Style", subtitle: '', description: description, content: content, category: food, avatar: 'http://cdn1.nourishgent.com/blog/zoodles_350x350.jpg', cover_path: 'http://cdn1.nourishgent.com/blog/zoodles_1200x800.jpg', avatar_urls: { featured: 'http://cdn1.nourishgent.com/blog/zoodles_320x450.jpg' }, tags: ['Recipies','KidApproved','Nutritious', 'NutFree', 'Zoodles', 'Noodles', 'Ramen'], featured: 3 )
puts article.url




content = <<HTML
<p>
I don't know about you but I love pomegranate, increasingly so over the last month as they seem to be hitting some nutrition desire my body has been having.  Up until recently I have been buying those cups of pom seeds, because buying the fruit itself and getting the seeds out was a messy pain.  Then a few months ago I was over at a friends house with my wife and kids for a supper/play date for our son.  At some point while we were talking the kids came stumbling over asking for a snack, and our friend Riyadh went into the kitchen pulled a pomegranate from a fruit bowl, sliced it open and proceeded to beet the halves with a wooden spoon, and a minute later came out with a bowl full of pom seeds for the kids.  I was astonished and at that time confused as to how he got the seeds out, but never enquired about how as we had enough to do wrangling kids and catching up.
</p>
<p>
Later, curious about how it was done, I purchased a pomegranate and looked on youtube for how it was done.  It turns out the process is fairly simple.
</p>
<p>
<ol>
	<li>Make a shallow 5mm cut along the equator of the pomegranate, just deep enough to penetrate the skin and rind.</li>
	<li>With your fingers, pry the pom open into 2 halves.</li>
	<li>On one half, loosen the seeds by pulling gently around the edges.</li>
	<li>Take that half, place it upside down in the palm of your hand over top of a large bowl</li>
	<li>With the edge of a wooden spoon hit the pomegranate, which will loosen the seeds causing them to fall into your hand, and then into the bowl.</li>
</ol>
</p>
<p>
This will give you 95% of the seeds, then you just flick the last few off with the spoon.  The average yield seems to be about 2 cups.  As you get more confident, you can start to hit harder and use the tip of the spoon to loosen the seeds faster.
</p>
<p>
These fresh pom seeds taste better, and remain fresh longer than the pom cups you get at the grocery store.  If you are lucky enough to have a Costco membership, you can buy flats of 6 pomegranates, each one producing about twice as much as one store bought cup, which is a great value.
<p>
<p>
Also, if you are brave this is a fun way for your preschooler to help you in the kitchen.  Place half the loosened pomegranate face down onto a plate, let the kiddo bash it with a spoon, and scoop up and eat the rewards.
<p>
HTML
description = "Save money and enjoy fresh pomegranate seeds, with these 5 steps."
article = SwellMedia::Article.create( user: admin_user, publish_at: 1.week.ago, title: 'Harvesting Pomegranate Seeds', subtitle: '', description: description, content: content, category: hacks, avatar: 'http://cdn1.nourishgent.com/blog/pom_350x350.jpg', cover_path: 'http://cdn1.nourishgent.com/blog/pom_1200x800.jpg', avatar_urls: { featured: 'http://cdn1.nourishgent.com/blog/pom_320x450.jpg' }, tags: ['Fruit', 'Pomegranate', 'KidApproved', 'Thifty'], featured: 4 )
puts article.url




content = <<HTML
<p>
Last Saturday, as I was looking through the fridge trying to figure out what to make the kids for breakfast, my 4 year old son, darted into the fridge and grabbed a carton of chocolate almond milk, and politely asked for a cup for breakfast.  Almond milk for breakfast... no sorry bud, but I was then suddenly struck with an idea, that would satisfy my parental nutrition requirements for breakfast and satisfy my son's desire for chocolate milk.
</p>
<p>
Drawing on my experience making chia juice, I thought... why not chocolate almond milk chia.  Using the standard 4:1 (or 3:1) ration of chia seeds to fluid rule I made some and the kiddos loved it, and this is the recipe.
</p>
<p>
Lets talk nutrition, 1/4 cup of chia seeds have 12g of protein, 12g of healthy fats (too keep you feeling full), and 20g of fiber, not to mention significant source of calcium, magnesium and iron all of which are great for fueling and recovering from hard work, in fact chia seeds have been scientifically proven to help performance as much as a sports drink.  But there is more, just over half of the fat in chia seeds is Omega-3 fatty acids, proportionately more than salmon, which are great for a number of things including metabolic health.
</p>
<p>
Then add a cup of almond milk, and you get some more protein, and healthy fats, along with significant amounts of potasium, calcium, vitamin D, iron, Vitamin E, Magnesium and more.
</p>
<p>
Best of all you (or your kids) think you are getting away with having desert for breakfast, but in fact will have been fueled with nutritiously dense foods.
</p>
<p>
Ingredients:
<ul>
	<li>1 cup of chocolate almond milk (1 cup of unsweetened almond milk, 2 tsp of raw cocoa powder, 1-2 tsp of agave)</li>
	<li>1/4 cup of chia seeds</li>
</ul>
</p>
<p>
Instructions:
<ol>
	<li>Microwave almond milk for 30-40 seconds to make slightly warm (helps speed up gel process)</li>
	<li>Pour in chia seeds.</li>
	<li>Stir slowly for 2 minutes.</li>
	<li>Let sit for 15 minutes (make and enjoy a cup coffee or matcha)</li>
	<li>Serve with some fresh/dried fruit (I like raspberries) and if you like a bit of crunch sprinkle with some cocoa nibs.</li>
</ol>
</p>
<p>
Makes 2 half cup servings
</p>
<p>
Tip: For a more smooth pudding grind the chia seeds until they reach a ground pepper consistency (10-15 seconds in the blender).
</p>
HTML
description = "A quick high protein, superfood pudding for a delicious chocolatey breakfast or desert."
article = SwellMedia::Article.create( user: admin_user, publish_at: 4.week.ago, title: '2 Ingredient Chocolate Superfood Pudding', subtitle: '', description: description, content: content, category: food, avatar: 'http://cdn1.nourishgent.com/blog/chia_pudding_350x350.jpg', cover_path: 'http://cdn1.nourishgent.com/blog/chia_pudding_1200x800.jpg', avatar_urls: { featured: 'http://cdn1.nourishgent.com/blog/chia_pudding_320x450.jpg' }, tags: ['Recipies','Superfood','Chocolate','ChiaSeeds','KidApproved','Nutritious'], featured: 5 )
puts article.url



content = <<HTML
<p>
About 7 years ago I started on a quest to rid myself of sugar, and if you have ever tried this you will know how hard it is.  Just pick up a random can or box at your grocery store, look at the ingredients and you will see what I mean, especially in the cereal isle.  One of the things I wanted to replace was my easy morning bowl of cereal, so I started scouring health food stores, and months later stumbled upon a great seed cereal Qi'a.  The ingredients were fairly simple, chia seeds, hemp hearts and buckwheat, and 1 serving (only 2 tbsp) had 6g of protein, 4g of fiber, healthy fats and best of all ZERO sugar.  An added bonus being that chia seeds expand to up to 16 times their size when added to water, so even a small amount of this nutritionally dense mixture will not only give you long lasting energy but make you feel full.
</p>
<p>
Another interesting tid bit about chia seeds, is they are rich in many electrolytes (nutrients your body expends during exercise) as well as protein, and when scientifically tested along side sports drinks, chia seeds prove equal in supporting endurance.
</p>
<p>
I ate the stuff on and off for years, with milk/yogurt and some fruit, all the while encountering chia seeds in more and more things.  Chia juice, chia kombucha,...  Eventually I started experimenting with them, using small expensive bags I purchased from health food stores.  However over the last few years, with a Costco membership, I have been able to buy chia and hemp hearts relatively inexpensively, so I decided to try my hand at blending my own version, for a more cost effective result.  And so the experimenting began, playing with proportions and trying/removing new ingredients, eventually leading to a personal favorite recipe which I will now share with you.
</p>
<p>
Ingredients:
<ul>
	<li>1 cup chia seeds</li>
	<li>1/4 cup hemp hearts</li>
	<li>1/4 cup toasted buckwheat</li>
	<li>1/4 cup toasted coconut chips, unsweetened</li>
	<li>3 tbsps cocoa nibs</li>
</ul>
</p>
<p>
Blend ingredients and serve with 1/4 cup of greek yogurt.  For an added bit of citrus and sweet I recommend 1/3 cup of fresh or canned pineapple.
</p>
<p>
Makes about 16 servings (2 tbsps each)
</p>
HTML
description = 'This superfood cereal recipe packs a nutritionally dense punch of go-get-\'em fuel to start your day.'
article = SwellMedia::Article.create( user: admin_user, publish_at: 1.minute.ago, title: 'Superfood Cereal', subtitle: '', description: description, content: content, category: food, avatar: 'http://cdn1.nourishgent.com/blog/chia_cereal_350x350.jpg', cover_path: 'http://cdn1.nourishgent.com/blog/chia_cereal_1200x800.jpg', avatar_urls: { featured: 'http://cdn1.nourishgent.com/blog/chia_cereal_320x450.jpg' }, tags: ['Recipies','Superfood','ChiaSeeds','KidApproved','Nutritious', 'NutFree'], featured: 2 )
puts article.url