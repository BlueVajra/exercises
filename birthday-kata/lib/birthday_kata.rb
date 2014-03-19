require 'csv'

class BirthdayKata
  def initialize (csv_file)
    @csv_file = csv_file
    @birthday_array = []
    CSV.foreach(csv_file, {headers: true}) do |row|
      @birthday_array << row
    end
  end
  def get_names(date)
    #@birthday_array[2]["last_name"] + "," + @birthday_array[2][" first_name"]
    @names_array = []
    @birthday_array.each do |row|
      if date == row[" date_of_birth"].strip
        @names_array << row["last_name"] + "," + row[" first_name"]
      end
    end
    @names_array.join
  end

end