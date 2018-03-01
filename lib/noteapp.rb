require 'tty-prompt'

class NoteApp
  def self.hello
    puts "hello to you too"
  end
end

loop do
  # input = gets.chomp
  # command, *params = input.split /\s/
  choices = [
    { key: 'c', name: 'create note', value: :create_note },
    { key: 'v', name: 'view note', value: :view_note },
    { key: 'd', name: 'delete note', value: :delete_note },
    { key: 'l', name: 'list notes', value: :list_notes },
    { key: 's', name: 'search notes', value: :search_note },
    { key: 'e', name: 'hello', value: :hello },
    { key: 'q', name: 'Terminate session', value: :quit }
  ]
  input = TTY::Prompt.new
  command = input.expand("Create your notes. Choose your option?", choices)

  case command
    when :hello
      puts NoteApp.hello
    when :quit
      puts "Byeee"
      break
    else
      puts 'Invalid command'
  end
end
