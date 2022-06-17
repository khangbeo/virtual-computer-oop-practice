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
    puts "'#{filename}' was created by '#{@username}' on #{time}"
    puts @files
  end

  def update(filename, newTime)
    if @files.has_key?(filename)
      @files[filename] = newTime
      puts "#{filename} has been updated!"
    else
      puts "#{filename} doesn't exist!"
    end
  end
  
  def update_status(filename, status)
    if (@files.include?(filename))
      @files[filename][:status] = status
      puts "Status updated for #{filename}"
    else 
      puts "#{filename} doesn't exist!"
    end
  end

  def delete(filename)
    if @files.has_key?(filename)
      @files.delete(filename)
      puts "#{filename} has been deleted!"
    else
      puts "#{filename} doesn't exist!"
    end
    puts @files
  end
  
  def list_files
    return @files
  end
end

my_computer = Computer.new("Toga", "1234")
my_computer.create("Hi")
my_computer.delete("Hi")
