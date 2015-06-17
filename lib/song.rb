class Song
  attr_accessor :title, :artist

  def serialize
    text_file = self.title.gsub(" ", "_").downcase
    File.open("./tmp/#{text_file}.txt", 'w') { |f| f.write "#{@artist.name} - #{@title}"}
  end

end
