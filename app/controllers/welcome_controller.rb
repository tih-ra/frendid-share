class WelcomeController < ApplicationController
  def index
    @in_embed = Embed.first(:order=>"RAND()")
    @embeds = Embed.all(:order=>"RAND()", :limit=>20)
  end
end
