feature 'bookmarks page' do
  scenario 'visiting bookmarks page' do
    visit '/bookmarks'
    expect(page).to have_content('[["bookmark1", "link1"], ["bookmark2", "link2"]]')
  end
end
