# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

module MyRandom
  def self.boolean
    ((rand * 2).to_i == 1) ? true : false
  end
  
  def self.date
    (rand * 300).to_i.days.ago
  end
end

15.times do |n|
  published = MyRandom.boolean
  published_at = published ? MyRandom.date : nil
  
  Book.create({
    :title => "Fake Book #{n}",
    :content => "A longer fake content.\n\nWith line breaks XD\n\nThis is fake book #{n}",
    :published_at => published_at
  })
end