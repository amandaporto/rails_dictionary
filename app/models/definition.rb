class Definition < ActiveRecord::Base
  validates :word, presence: true, uniqueness: true
  validates :meaning, presence: true
  validates :part_of_speech, presence: true

  def self.search(search)
    where("word LIKE ? or meaning LIKE ?", "%#{search}%", "%#{search}%")

    # switch development to postgres or attempt to fix below?
    # where("lower(#{resource_class.table_name}.#{key}) LIKE lower(?)", "%#{search}%")

  end

  def fancy?
    word.length > 16
  end

  def self.random
    order("id").offset(rand(count)).first
  end

end
