class Article < ActiveRecord::Base

	has_many :comments

	validates :title, presence: true,
                    length: { minimum: 5 },
										uniqueness: true,
										:case_sensitive => false
										
end
