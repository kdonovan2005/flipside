class IssuesDecorator < SimpleDelegator

  def recommendation(issue)
    if issue.average_pros > issue.average_cons
      "Looks Positive! You should do this!"
    elsif issue.average_pros == issue.average_cons
      "Unfortunately, we don't have enough info to make a recommendation. \n Try adjusting the weights or adding additional Pros and/or Cons."
    else
      "Doesn't look good. You probably shouldn't do this."
    end
  end

end


# <% if @issue.average_pros > @issue.average_cons %>
#   <h2 id="Recommend"><%= "Looks Positive! You should do this!" %></h2>
# <% elsif @issue.average_pros == @issue.average_cons%>
#   <h2 id="Recommend"><%= "Unfortunately, this looks even and we don't have enough info to make a recommendation." %> <br>
#   <%= "Try adjusting the weights or adding additional Pros and Cons." %></h2>
# <% else %>
#   <h2 id="Recommend"><%= "Doesn't look good. You probably shouldn't do this." %></h2>
# <% end %> <br> <br>
