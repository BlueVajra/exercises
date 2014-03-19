require 'birthday_kata'

describe do
  it "returns a person whose birthday matches the sent date" do
    birthday_prog = BirthdayKata.new("employee_information.csv")
    expected = birthday_prog.get_names(1987/05/02)
    actual = "Gehard, Mike"
    expect(actual).to eq expected
  end
end