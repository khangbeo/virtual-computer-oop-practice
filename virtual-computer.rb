class Computer
  @@users = {}
  def Computer.get_users
    @@users
  end
  def initialize(username, password)
    @username = username
    @password = password
    @files = {}
    @@users[username] = password
  end

  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "A new file '#{filename}' was created by '#{@username}' on #{time}"
    puts @files
  end

  def update(filename, newTime)
    if @files.has_key?(filename)
      @files[filename] = newTime
      puts "File has been updated!"
    else
      puts "That file doesn't exist!"
    end
  end

  def delete(filename)
    if @files.has_key?(filename)
      @files.delete(filename)
      puts "File has been deleted!"
    else
      puts "That file doesn't exist!"
    end
    puts @files
  end
end

my_computer = Computer.new("Toga", "1234")
my_computer.create("Hi")
my_computer.delete("Hi")
