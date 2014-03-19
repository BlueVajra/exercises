require 'birthday_kata'

describe BirthdayKata do
  it "returns a person whose birthday matches the sent date" do
    birthday_prog = BirthdayKata.new("employee_information.csv")
    expected = "Gehard, Mike"
    actual = birthday_prog.get_names("1987/05/02")
    expect(actual).to eq expected
  end
  it "returns a person whose birthday matches the sent date" do
    birthday_prog = BirthdayKata.new("employee_information.csv")
    expected = "Durham, Kinsey"
    actual = birthday_prog.get_names("1945/04/01")
    expect(actual).to eq expected
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