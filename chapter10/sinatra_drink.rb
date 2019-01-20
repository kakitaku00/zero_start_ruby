require "sinatra"

get "/drink" do
  ["カフェオレ", "モカ", "コーヒー"].sample
end