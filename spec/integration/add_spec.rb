RSpec.describe "`rly add` command", type: :cli do
  it "executes `rly help add` command successfully" do
    output = `rly help add`
    expected_output = <<-OUT
Usage:
  rly add NAME URL

Options:
  -h, [--help], [--no-help]  # Display usage information

Command description...
    OUT

    expect(output).to eq(expected_output)
  end
end
