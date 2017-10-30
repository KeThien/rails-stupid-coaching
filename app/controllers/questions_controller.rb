class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @query = params[:query]
    @answer = coach_answer_enhanced(@query)
  end
end

private

def coach_answer(your_message)
  if your_message.downcase == "i am going to work right now!"
    "Good Boy!"
  elsif your_message.end_with?("?")
    "Silly question, son.."
  elsif your_message == ""
    ""
  else
    "I don't care my boy!"
  end
end

def coach_answer_enhanced(your_message)
  answer = coach_answer(your_message)
  if answer != ""
    if your_message.upcase == your_message
      "I can feel your motivation! #{answer}"
    else
      answer
    end
  else
    "Don't stare! Ask me something!"
  end
end
