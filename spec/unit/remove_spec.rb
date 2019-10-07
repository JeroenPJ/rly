require 'rly/commands/remove'

RSpec.describe Rly::Commands::Remove do
  it "executes `remove` command successfully" do
    output = StringIO.new
    name = nil
    options = {}
    command = Rly::Commands::Remove.new(name, options)

    command.execute(output: output)

    expect(output.string).to eq("OK\n")
  end
end
