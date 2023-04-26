cask "drata-agent" do
  version "3.4.0"
  sha256 "181888ef344de946e2a58797065858a3fdfd8aab7fd3b45b6a13738e033cf336"

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
