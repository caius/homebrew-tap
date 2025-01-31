cask "drata-agent" do
  version "3.6.2"
  sha256 "a872aa0fa12cc57b3f95ec26efc1b75f7eef598b0e3bd993c2d88278781c4dff"

  url "https://github.com/drata/agent-releases/releases/download/v#{version}/Drata-Agent-mac.zip", verified: "github.com/drata/"
  name "drata-agent"
  desc "Drata compliance and security service Agent"
  homepage "https://drata.com/"

  livecheck do
    url :url
  end

  auto_updates true

  app "Drata Agent.app"

  uninstall quit: "com.drata.agent"

  zap trash: [
    "~/Library/Application Support/drata-agent/",
    "~/Library/Logs/drata-agent/",
    "~/Library/Preferences/com.drata.agent.plist",
    "~/Library/Saved Application State/com.drata.agent.savedState/",
  ]
end
