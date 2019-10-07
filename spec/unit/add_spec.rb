require 'rly/commands/add'

RSpec.describe Rly::Commands::Add do
  it "executes `add` command successfully" do
    output = StringIO.new
    name = nil
    url = nil
    options = {}
    command = Rly::Commands::Add.new(name, url, options)

    command.execute(output: output)

    expect(output.string).to eq("OK\n")
  end
end
