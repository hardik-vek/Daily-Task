class Article < ApplicationRecord
    validates :name, presence: true
    validates :description, presence: true, length: { minimum: 5}
    before_destroy :before_destroy_action
    after_destroy :log_destroy_action

    def before_destroy_action
        puts "Article starting to destroy..........."
    end

    def log_destroy_action
        puts "Article destroyed successfully........"
    end
end
