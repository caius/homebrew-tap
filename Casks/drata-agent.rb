cask "drata-agent" do
  version "3.5.0"
  sha256 "27cfc6144424d53f6827177df91578771fa91a1816791b29e058af36733a5398"

  url "https://github.com/drata/agent-releases/releases/download/v#{version}/Drata-Agent-mac.zip", verified: "github.com/drata/"
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
