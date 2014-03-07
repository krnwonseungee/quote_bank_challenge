class Controller

  def self.run!(command, text = nil)
    default_list_num = 1
    case command
    when "list"
      TaskView.display(Task.all)
    when "add"
      Task.create(message: text, list_id: default_list_num)
    when "delete"
      Task.find(text.to_i).destroy
    when "complete"
      t = Task.find(text.to_i)
      t.completed = true
      t.save
    else
      puts "Give me a command!"
    end
  end

end