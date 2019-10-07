require 'rly/commands/open'

RSpec.describe Rly::Commands::Open do
  it "executes `open` command successfully" do
    output = StringIO.new
    name = nil
    options = {}
    command = Rly::Commands::Open.new(name, options)

    command.execute(output: output)

    expect(output.string).to eq("OK\n")
  end
end
