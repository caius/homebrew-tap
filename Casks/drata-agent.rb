cask "drata-agent" do
  version "3.2.0"
  sha256 "b58c05e90685fe78ac907acfc8233fd22e48eb4d05d3142b1ea19b30e3bf10c7"

  url "https://github.com/drata/agent-releases/releases/download/v#{version}/Drata-Agent-#{version}-mac.zip", verified: "github.com/drata"
  name "drata-agent"
  desc "Drata compliance and security service Agent"
  homepage "https://drata.com/"

  livecheck do
    url :url
  end

  auto_updates true

  app "Drata Agent.app"
end
