require 'birthday_kata'

describe do
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