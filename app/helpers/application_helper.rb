module ApplicationHelper

  def title
    base_title = "School Achievements"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end

  def display_achievements(achievements)
    result = ""
    achievements.each do |achievement|
      result << "<tr>"
      result << "<td>#{achievement.assignment_name}</td>"
      result << "<td>#{achievement.score }</td>"
      result << "<td>#{achievement.due_on}</td>"
      result << "</tr>"
    end
    result.html_safe
  end

end
