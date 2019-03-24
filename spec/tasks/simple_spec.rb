require 'spec_helper'

  RSpec.describe 'Command Validation', type: :aruba do
  let(:command) { run_command "simple.rb" }

  it "wrong/missing arguments" do
    command.write("lookup\n")
    stop_all_commands
    expect(command.output).to end_with("Missing required argument.\n")
  end
end
