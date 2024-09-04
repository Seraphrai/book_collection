require 'rails_helper'

RSpec.describe Book, type: :model do
    # Test validations for new attributes
    it 'is valid with all attributes' do
      book = Book.new(title: 'Sample Title', author: 'Author Name', price: 9.99, published_date: Date.today)
      expect(book).to be_valid
    end

    it 'is invalid without a title' do
      book = Book.new(title: nil)
      expect(book).not_to be_valid
    end
  
    it 'is invalid without an author' do
      book = Book.new(title: 'Sample Title', author: nil)
      expect(book).not_to be_valid
    end
  
    it 'is invalid without a price' do
      book = Book.new(title: 'Sample Title', price: nil)
      expect(book).not_to be_valid
    end
  
    it 'is invalid without a published_date' do
      book = Book.new(title: 'Sample Title', published_date: nil)
      expect(book).not_to be_valid
    end
  end