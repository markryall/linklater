class RedirectController < ApplicationController
  def to
    id = params[:id].to_i 36
    puts "looking for id #{id}"
    link = Link.find_by_id id
    if link
      puts "redirecting to url #{link.url}"
      redirect_to link.url, :status=>:moved_permanently \
    else
      puts "not found"
      redirect_to "/404.html"
    end
  end
end