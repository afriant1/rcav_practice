Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })
  get("/square_root/:input", { :controller => "calculations", :action => "square_root" })
  get("/random/:input1/:input2", { :controller => "calculations", :action => "random" })
  get("/payment/:input1/:input2/:input3", { :controller => "calculations", :action => "payment" })
end
