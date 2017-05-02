feature 'creating a new link' do
  scenario 'the user creates a new link' do
    visit '/links/new'
    fill_in 'url', with: 'http://www.fiddlerscode.com/'
    fill_in 'title', with: "Fiddler's Code"
    click_button 'Create link'

    expect(current_path).to eq '/links'

    within 'ul#links' do
      expect(page).to have_content("Fiddler's Code")
    end
  end


end
