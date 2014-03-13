require 'temp_control'

describe TempControl do
  it "reads in txt file" do

    control = TempControl.new
    all_output = control.readfile
    puts all_output
    #expected = "Hi"
    #actual =
    #expect(actual).to eq expected
    expect(all_output).to match("(Unofficial, Preliminary Data).")
  end
end