# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Create a test admin use
Admin.create({:email => 'test@test.com', :full_name => 'Sean Carroll', :password => 'test1234', :password_confirmation => 'test1234'})

#Seed required content
Content.create(:name => 'Footer', :body => '93 Made Pty Ltd © 2009-13. All Rights Reserved. ABN 43 130 700 284 (ACN 130 700 284) P: +61 2 9661 8231 E: info@93madegames.com.au')

#Create test articles
Article.create(
                [
                  {
                    :title => 'PAX Australia... unexpect the expected',
                    :content => 'test content',
                    :caption => 'PAX Aus 2013 was the first Penny Arcade Expo held outside of the USA. Go to the PAX website for more information on all Penny Arcade Expos.',
                    :admin_id => Admin.all.where("email = 'test@test.com'").first.id
                  },
                  {
                    :title => 'A Penny (Arcade Expo) for our Thoughts',
                    :content => 'test content',
                    :caption => 'PAX AUS 2013 is the first Penny Arcade Expo held outside of the USA. Go to the PAX website for more information on all Penny Arcade Expos.',
                    :admin_id => Admin.all.where("email = 'test@test.com'").first.id
                  },
                  {
                    :title => 'Oops... we\'ve won it again!',
                    :content => 'test content',
                    :caption => 'The Boardgames Australia awards were presented at the 2013 Toy and Game Expo, which was held at Sydney Olympic Park over the June long weekend. More information about the awards can be found on the BGA website.',
                    :admin_id => Admin.all.where("email = 'test@test.com'").first.id
                  }
                ]
              )

#Create test retailers
Stockist.create(
                  {
                    :name => 'Good Games',
                    :link => 'http://www.goodgames.com.au',
                    :region => 'NSW',
                    :locations => 'Sydney, Burwood, Gosford, Newcastle, Wollongong'
                  }
                )