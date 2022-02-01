class Accessory < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true

  #   attr_accessor :name

  validates_length_of :name, maximum: 6
  before_validation :remove_whitespaces, on: :create #, :normalize_name

  private

  def remove_whitespaces
    name.strip!
  end

  after_validation :normalize_description, on: [:create, :update]
  # before_create_commit :normalize_name
  after_create_commit :normalize_name
  # after_create_rollback :normalize_name

  before_create do
    puts "object initilazed"
  end

  before_save do
    puts "object is not saved"
  end

  before_update do
    puts "object not updated"
  end

  after_update do
    puts "object updated"
  end

  before_destroy do
    puts "object not destroyed"
  end

  #   around_destroy do
  #     puts "object jdhdjhdh destroyed"
  #   end

  after_destroy do
    puts "object destroyed"
  end

  after_create do
    puts "object created"
  end

  after_save do
    puts "object is saved"
  end

  after_initialize do
    puts "you have initialized an object"
  end

  after_find do |user|
    puts "you have found an object"
  end

  after_touch do |user|
    puts "you have touched an object"
  end

  private

  def normalize_name
    self.name = name.titleize
  end

  def normalize_description
    self.description = description.titleize
  end
end
