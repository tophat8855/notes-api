class Note < ActiveRecord::Base
  def index
    @notes = Note.all
  end
end
