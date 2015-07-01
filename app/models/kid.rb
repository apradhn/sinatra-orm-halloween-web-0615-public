class Kid < ActiveRecord::Base
  has_one :bucket
  has_many :candies, through: :bucket

  def pig_out(num)
    num.times do |n|
      candy = self.candies.last
      Candy.destroy(candy.id)
    end

    if num == 1 || num == 2
      self.feeling = "Happy"
    elsif num >= 3
      self.feeling = "Sick"
    end
    self.save
  end
end