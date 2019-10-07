RSpec.describe "`rly remove` command", type: :cli do
  it "executes `rly help remove` command successfully" do
    output = `rly help remove`
    expected_output = <<-OUT
Usage:
  rly remove NAME

Options:
  -h, [--help], [--no-help]  # Display usage information

Command description...
    OUT

    expect(output).to eq(expected_output)
  end
end
