require 'rails_helper'

RSpec.describe ApplicationController, :type => :controller do
	describe "GET about" do
		it "renders the show template" do
			get :about
			expect(response).to render_template("about")
		end
	end

	describe "GET contact" do
		it "renders the contact template" do
			get :contact
			expect(response).to render_template("contact")
		end
	end

	describe "GET home" do
		it "renders the home template" do
			get :home
			expect(response).to render_template("home")
		end
	end

	describe "GET signup" do
		it "renders the signup template" do
			get :signup
			expect(response).to render_template("signup")
		end
	end
end
