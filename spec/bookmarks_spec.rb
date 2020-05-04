require 'bookmarks'

RSpec.describe Bookmarks do
  it 'shows an array of bookmarks' do
  subject = Bookmarks.all
  expect(subject).to include("http://www.google.com")
  end
end
