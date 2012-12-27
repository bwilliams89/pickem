require 'spec_helper'

describe "StaticPages" do

	subject { page }

	describe "Home page" do
		before { visit root_path }

		it { should have_selector('h1', text: 'Football Pick\'em') }
		it { should have_selector('title', text: full_title('')) }
		it { should_not have_selector('title', text: '| Home') }
	end

	describe "About page" do
		before { visit about_path }

		it { should have_selector('h1', text: 'About') }
		it { should have_selector('title', text: full_title('About')) }
	end

	/describe "Rankings page" do
		before { visit rankings_path }

		it { shoud have_selector('h1', text: 'My Picks') }
		it { should have_selector('title', text: full_title('My Picks')) }
	end

	describe "Picks page" do
		before { visit picks_path }

		it { shoud have_selector('h1', text: 'My Picks') }
		it { should have_selector('title', text: full_title('My Picks')) }
	end/

end
