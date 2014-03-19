require 'csv'

class BirthdayKata
  def initialize (csv_file)
    @csv_file = csv_file
    @people_array = []
    CSV.foreach(csv_file, {headers: true}) do |row|
      #@birthday_array << row
      @people_array << Person.new(row[" first_name"], row["last_name"], row[" date_of_birth"], row[" email"])
    end
  end
  def match_birthday(date)
    @its_your_birthday_array = []
    @people_array.each do |person|
      if date == person.date_of_birth
        @its_your_birthday_array << person
      end
    end
    @its_your_birthday_array
  end
end


class Person
  attr_accessor :first_name, :last_name, :date_of_birth, :email
  def initialize(fn, ln, dob, email)
    @first_name = fn.strip
    @last_name = ln.strip
    @date_of_birth = dob.strip
    @email = email.strip
  end
end
n