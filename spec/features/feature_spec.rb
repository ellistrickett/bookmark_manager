feature 'Viewing bookmarks' do
  feature 'visiting the homepage' do
    scenario 'the page title is visible' do
      visit '/'
      expect(page).to have_content 'Bookmark Manager'
    end
  end

  feature 'viewing bookmarks' do
    scenario 'bookmarks are visible' do

      # Add the test data
      Bookmarks.create(url: "http://www.makersacademy.com")
      Bookmarks.create(url: "http://www.destroyallsoftware.com")
      Bookmarks.create(url: "http://www.google.com")

      visit '/bookmarks'

      expect(page).to have_content 'http://www.makersacademy.com'
      expect(page).to have_content 'http://www.destroyallsoftware.com'
      expect(page).to have_content 'http://www.google.com'
    end
  end
end