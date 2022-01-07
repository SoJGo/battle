feature 'Enter names' do
    scenario 'submitting names' do
      visit('/')
      fill_in('player1', with: 'Jason')
      fill_in('player2', with: 'Sophie')
      click_button('Commence')
      expect(page).to have_content 'Jason vs. Sophie'
    end
  end