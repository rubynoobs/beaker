require 'spec_helper'

describe "SupplierPages" do
	subject { page }

	shared_examples_for "all supplier pages" do
	 it { should have_selector('h1', text: heading) }
	 it { should have_selector('title', text: full_title(page_title)) }
	end

	it "should have the right links on the layout" do
    visit root_path
    # click_link "Browse"
    # page.should have_selector 'title', text: full_title('Components')
    click_link "Supplier Page"
    page.should have_selector 'title', text: full_title('Supplier List')
    click_link "Home"
    click_link "Sign in"
    page.should have_selector 'title', text: full_title('Sign In')
    page.should have_selector 'a', text: 'Sign up'
    click_link 'Sign up'
    page.should have_selector 'title', text: full_title('Sign Up')
    click_link "Home"
    page.should have_selector 'title', text: full_title('')
  end

	describe	"Supplier list page" do
		before { visit suppliers_path }
		let(:heading) { 'Suppliers' }
		let(:page_title) { 'Supplier List'}

		it_should_behave_like "all supplier pages"

		describe "actual list" do
			it { should have_selector('dl#suppliers') }
			# it { should have_selector('div.supplier') }
			# it { should have_selector('dt.supplier-icon') }
			# it { should have_selector('dd.supplier-info') }
			# it { should have_selector('h3.supplier-name') }
			# it { should have_selector('h4.supplier-rating') }
		end
	end

	describe "Supplier Page" do
	  before { visit supplier_page_path }
	  let(:heading) { '' }
	  let(:page_title) { 'Supplier' }

	  it_should_behave_like "all supplier pages"

	  describe "feedback section(s)" do
	   it { should have_selector('section.feedback') }
	   it { should have_selector('h4.reviewer-name') }
	   it { should have_selector('p.feedback-content') }
	   it { should have_selector('h4.rating') }
	  end
	end

end # end page
