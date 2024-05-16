cask "drata-agent" do
  version "3.6.1"
  sha256 "4eb24adb971296966cc77fc24e730050c65ecae441b9b558b397bb39da47f88f"

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
