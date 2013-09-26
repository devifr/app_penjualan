require "spec_helper"

describe PenjualanBahansController do
  describe "routing" do

    it "routes to #index" do
      get("/penjualan_bahans").should route_to("penjualan_bahans#index")
    end

    it "routes to #new" do
      get("/penjualan_bahans/new").should route_to("penjualan_bahans#new")
    end

    it "routes to #show" do
      get("/penjualan_bahans/1").should route_to("penjualan_bahans#show", :id => "1")
    end

    it "routes to #edit" do
      get("/penjualan_bahans/1/edit").should route_to("penjualan_bahans#edit", :id => "1")
    end

    it "routes to #create" do
      post("/penjualan_bahans").should route_to("penjualan_bahans#create")
    end

    it "routes to #update" do
      put("/penjualan_bahans/1").should route_to("penjualan_bahans#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/penjualan_bahans/1").should route_to("penjualan_bahans#destroy", :id => "1")
    end

  end
end
