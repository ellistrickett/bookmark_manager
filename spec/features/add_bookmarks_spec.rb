feature 'Add a new bookmark' do 
  scenario 'user can add a bookmark to Bookmark Manager' do 
    visit('/bookmarks/new')
    fill_in('url', with: 'http://www.yahoo.com')
    click_button('Add')

    expect(page). to have_content('http://www.yahoo.com')
  end 
end 