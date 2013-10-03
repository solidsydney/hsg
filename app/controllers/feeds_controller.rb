class FeedsController < ApplicationController
  def index
    @feeds = [ Gist, Assignment, Event, Picture ].inject([ ]) do |a, with_class|
      a + with_class.all(:limit => 10, :order => 'created_at DESC')
    end.sort_by(&:created_at).reverse[0, 10]
    @questions = Question.last
  end
end
