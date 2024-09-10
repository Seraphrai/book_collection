require 'rails_helper'

RSpec.describe 'Book management', type: :feature do
    scenario 'user creates a new book successfully with all attributes' do
      visit new_book_path
  
      fill_in 'Title', with: 'Sample Title'
      fill_in 'Author', with: 'Author Name'
      fill_in 'Price', with: 9.99
      fill_in 'Published date', with: Date.today
      click_button 'Create Book'
  
      expect(page).to have_content('Book was successfully created.')
      expect(page).to have_content('Sample Title')
      expect(page).to have_content('Author Name')
    end
  
    scenario 'user fails to create a new book with a blank title' do
      visit new_book_path
  
      fill_in 'Title', with: ''
      click_button 'Create Book'
  
      expect(page).to have_content("Title can't be blank")
    end
  end
