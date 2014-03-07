class TaskView
  class << self
    def display(active_record_obj)
      active_record_obj.each do |task|
        puts "#{task.id}. [#{task.completed? ? "X" : " "}] #{task.message}"
      end
    end
  end
end

