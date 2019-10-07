RSpec.describe "`rly list` command", type: :cli do
  it "executes `rly help list` command successfully" do
    output = `rly help list`
    expected_output = <<-OUT
Usage:
  rly list

Options:
  -h, [--help], [--no-help]  # Display usage information

Command description...
    OUT

    expect(output).to eq(expected_output)
  end
end
