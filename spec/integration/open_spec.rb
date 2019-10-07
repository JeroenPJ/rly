RSpec.describe "`rly open` command", type: :cli do
  it "executes `rly help open` command successfully" do
    output = `rly help open`
    expected_output = <<-OUT
Usage:
  rly open NAME

Options:
  -h, [--help], [--no-help]  # Display usage information

Command description...
    OUT

    expect(output).to eq(expected_output)
  end
end
