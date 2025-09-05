class Post < ApplicationRecord
    # Scopes for filtering posts
    scope :active, -> { where(active: true) }
    scope :published, -> { where('publish_date <= ?', Date.current) }
    scope :recent, -> { active.published.order(publish_date: :desc) }
    scope :featured, -> { where(featured: true) }
    scope :regular,  -> { where(featured: false) }

    # Validations
    validates :title, presence: true, uniqueness: true, length: { maximum: 255 }
    validates :content, presence: true, length: { maximum: 1500 }
    validates :publish_date, presence: true

    after_create :set_permalink

    private
    def set_permalink
        puts "Setting permalink for #{title}"
        
        # TODO: self.permalink = ?
    end

end
