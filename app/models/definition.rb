class Definition < ActiveRecord::Base
  validates :word, presence: true, uniqueness: true
  validates :meaning, presence: true
  validates :part_of_speech, presence: true

  def self.search(search)
    where("word LIKE ? or meaning LIKE ?", "%#{search}%", "%#{search}%")
  end

end
