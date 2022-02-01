class Box < ApplicationRecord
  after_create_commit :user_save
  after_update_commit :user_save
  after_save :after_s
  after_save_commit :after_SC

  def user_save
    puts "i am method of after_create_commit"
  end

  def after_s
    puts "i am method of after_save"
  end

  def after_SC
    puts "i am method of after_save_commit"
  end
end
