require 'rails_helper'

RSpec.describe ComposersController, :type => :controller do
	describe "GET index" do
	  it "assigns composer" do
	    composer = Composer.all.order("created_at DESC")
	    get :index
	  end

	  it "renders the index template" do
	    get :index
	    expect(response).to render_template("index")
	  end
	end

	describe "GET new" do
		it "makes new composer" do
			@composer = Composer.new
		end

		it "renders the new template" do
			get :new
			expect(response).to render_template("new")
		end
	end
	
	describe "GET create" do
		it "creates composer" do
			@composer = Composer.new
		end	

		it "saves new composer" do
			@composer = Composer.new.save
		end
	end					

	describe "GET edit" do
		it "renders the edit template" do
			get :edit
			expect(response).to render_template("edit")
		end	
	end
end
