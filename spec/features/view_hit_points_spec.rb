feature 'View hit points' do
  scenario 'see Player 2 hit points' do
    visit('/')
      fill_in('player1', with: 'Jason')
      fill_in('player2', with: 'Sophie')
      click_button('Commence')
      expect(page).to have_content 'Sophie HP: 100/100'
  end
end