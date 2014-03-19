require 'birthday_kata'

describe BirthdayKata do
  it "returns a person's alst name whose birthday matches the sent date" do
    birthday_prog = BirthdayKata.new("employee_information.csv")
    expected = "Gehard"
    actual = birthday_prog.match_birthday("1987/05/02")[0].last_name
    expect(actual).to eq expected
  end
  it "returns an an email of the second person whos birthday it is" do
    birthday_prog = BirthdayKata.new("employee_information.csv")
    expected = "bobsmith@gmail.com"
    actual = birthday_prog.match_birthday("1945/04/01")[1].email
    expect(actual).to eq expected
  end
  it "should parse month and day from date_of_birth row" do

  end

end

describe Person do
  it "takes information parameters at instantiation" do

    cory = Person.new("Cory", "Leistikow", "1974/12/01", "cory.leistikow@gmail.com")

    expected = "1974/12/01"
    actual = cory.date_of_birth

    expect(actual).to eq expected
  end
end

