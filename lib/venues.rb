class Venue < ActiveRecord::Base
  has_and_belongs_to_many(:bands)
  validates(:name, presence: true)
  before_save(:capitalize_all)

private

  def capitalize_all
    capitalized_words = []
    self.name.split(' ').each do |word|
      capitalized_words << word.capitalize
    end
    self.name = capitalized_words.join(' ')
  end
end
