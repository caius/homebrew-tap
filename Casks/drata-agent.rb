cask "drata-agent" do
  version "3.1.0"
  sha256 "549f79d9514299b14ccd4eeb0a76ffdeb3132e2c860c716f7ce1d7d8fc2ecd66"

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
