cask "drata-agent" do
  version "3.7.0"
  sha256 "34684b1bb76ea5366b57947276de08a7c4e3a046aaf53683296843e63bce68e8"

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
