require 'spec_helper'

describe "Static Pages" do

	subject { page }

	shared_examples_for "all static pages" do
	 it { should have_selector('h1', text: heading) }
	 it { should have_selector('title', text: full_title(page_title)) }
	end

  it "should have the right links on the layout" do
    visit root_path
    click_link "Browse"
    page.should have_selector 'title', text: full_title('Components')
    click_link "Supplier Page"
    page.should have_selector 'title', text: full_title('Supplier Page')
    click_link "Home"
    click_link "Sign in"
    page.should have_selector 'title', text: full_title('Sign In')
    page.should have_selector 'a', text: 'Sign up'
    click_link 'Sign up'
    page.should have_selector 'title', text: full_title('Sign Up')
    click_link "Home"
    page.should have_selector 'title', text: full_title('')
  end

	describe "Home page" do
		before { visit root_path }
		let(:heading) { 'Beaker' }
		let(:page_title) { '' }

		# it_should_behave_like "all static pages"
		it { should_not have_selector('title', text: "| Home") }

        describe "for any visitor" do
            it { should have_selector('input', type: 'text', name: 'search') }
        end
	end

    describe "Browse page" do
        before { visit components_path }
        let(:heading) { 'Listing Components' }
        let(:page_title) { 'Components'}
        
        it_should_behave_like "all static pages"
        it { should have_selector('select', text: 'Filter') }

        describe "results table" do
            it { should have_selector('table.table.table-striped') }
            it { should have_selector('th', text: 'Part No.') }
            it { should have_selector('th', text: 'Quantity') }
            it { should have_selector('th', text: 'Price') }
            it { should have_selector('th', text: 'Description') }
            it { should have_selector('th', text: 'Supplier') }
            it { should have_selector('th', text: 'Rating') }
        end

        describe "import CSV" do
            it { should have_selector('h2', text: 'Import CSV') }

            # describe "upoading invalid file/failed upload" do
            #     it "should not create a new component" do
            #         expect { click_button "Import" }.not_to change(Component, :count)
            #     end
            #     describe "error message" do
            #         before { click_button "Import" }
            #         it { should have_content('error') }
            #     end
            # end

            # describe "uploading valid file/successful upload" do
            #     it "should create a new component" do
            #         expect { click_button "Import" }.to change(Component, :count).by(1)
            #     end
            # end
        end

    end

    describe "Supplier Page" do
        before { visit supplier_page_path }
        let(:heading) { '' }
        let(:page_title) { 'Supplier Page' }

        it_should_behave_like "all static pages"

        describe "feedback section(s)" do
            it { should have_selector('section.feedback') }
            it { should have_selector('h4.reviewer-name') }
            it { should have_selector('p.feedback-content') }
            it { should have_selector('h4.rating') }
        end
    end

end # --END spec

# --- ATTENTION -- 
# Feedback sections should test contain three parts:
# + reviewer-name
# + feedback-content
# + rating

# And the supplier page rspec should test that:
# 1: a section of class 'feedback' exists
# 2: the section contains an h4 selector of class 'reviewer-name'
# 3: the section contains a p selector of class 'feedback-content'
# 4: the section contains an h4 selector of class 'rating'