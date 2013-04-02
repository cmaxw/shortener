class Url < ActiveRecord::Base
  belongs_to :user
  has_many :visits

  attr_accessible :slug, :destination

  validates :slug, uniqueness: true, length: {is: 6}

  validates_presence_of :slug, :destination

  before_create do
    puts "--- BEFORE CREATE ---"
  end

  before_validation do
    puts "--- BEFORE VALIDATION ---"
  end

  after_validation do
    puts "--- AFTER VALIDATION ---"
  end

  around_create :around_create_method
  around_save :around_save_method

  def around_create_method
    puts "--- 1 AROUND CREATE ---"
    yield
    puts "--- 2 AROUND CREATE ---"
  end
  def around_save_method
    puts "--- 1 AROUND SAVE ---"
    yield
    puts "--- 2 AROUND SAVE ---"
  end
end
