cask "drata-agent" do
  version "3.0.5"
  sha256 "1130d42968983d547d50a04dfc4dab5d6ad4417297f66609faab2665c55afb1a"

  url "https://github.com/drata/agent-releases/releases/download/v#{version}/Drata-Agent-#{version}-mac.zip", verified: "github.com/drata"
  name "drata-agent"
  desc "Drata Agent for compliance and security"
  homepage "https://drata.com"

  auto_updates true

  app "Drata Agent.app"
end
