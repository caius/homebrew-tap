cask "drata-agent" do
  version "3.4.1"
  sha256 "1ef2e0266ffe26ba81ce71bcd60d0c02aa861702877a8ea301499ee0e1762919"

  url "https://github.com/drata/agent-releases/releases/download/v#{version}/Drata-Agent-#{version}-universal-mac.zip", verified: "github.com/drata/"
  name "drata-agent"
  desc "Drata compliance and security service Agent"
  homepage "https://drata.com/"

  livecheck do
    url :url
  end

  auto_updates true

  app "Drata Agent.app"

  uninstall quit: %w[
    com.drata.agent
  ]

  zap trash: [
    "~/Library/Application Support/drata-agent/",
    "~/Library/Logs/drata-agent/",
    "~/Library/Preferences/com.drata.agent.plist",
    "~/Library/Saved Application State/com.drata.agent.savedState/",
  ]
end
