require 'rails_helper'

RSpec.describe ComposersController, :type => :controller do
	describe "GET index" do
	  it "assigns composer" do
	    composer = Composer.all.order("created_at DESC")
	    get :index
	  end
	 end

	  it "renders the index template" do
	    get :index
	    expect(response).to render_template("index")
	  end
	
require 'rails_helper'

RSpec.describe ComposersController, :type => :controller do
	
	describe "GET show" do
		it "renders the show template" do
			get :show
			expect(response).to render_template("show")
		end
	end

	describe "GET new" do
		it "assigns @composers" do
			@composer = current_end_user.composers.build
			get :new
		end
	end

	describe "GET new" do
		it "renders the new template" do
			get :new
			expect(response).to render_template("new")
		end
	end
	

# Must look at this one
	describe "GET create" do
		it "assigns @composer" do
			@composer = current_end_user.composers.build(composer_params)
		end	
	end					

	describe "GET edit" do
		it "renders the edit template" do
			get :edit
			expect(response).to render_template("edit")
		end	
	end
	
end
