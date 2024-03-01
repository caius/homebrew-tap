cask "drata-agent" do
  version "3.6.0"
  sha256 "dec211546289316271fa73d04759b0a688b93b563b3f06cd27f4680bcb5cc55e"

  url "https://github.com/drata/agent-releases/releases/download/v#{version}/Drata-Agent-mac.zip", verified: "github.com/drata/"
  name "drata-agent"
  desc "Drata compliance and security service Agent"
  homepage "https://drata.com/"

  livecheck do
    url :url
  end

  auto_updates true

  app "Drata Agent.app"

  uninstall quit: com.drata.agent

  zap trash: [
    "~/Library/Application Support/drata-agent/",
    "~/Library/Logs/drata-agent/",
    "~/Library/Preferences/com.drata.agent.plist",
    "~/Library/Saved Application State/com.drata.agent.savedState/",
  ]
end
