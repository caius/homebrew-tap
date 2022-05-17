cask "drata-agent" do
  version "3.1.2"
  sha256 "69d6d5354f14d4faea04c54fb41ef3380cf642b0b7a75f3045275f3dd9c5ad19"

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
