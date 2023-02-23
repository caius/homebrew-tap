cask "drata-agent" do
  version "3.3.0"
  sha256 "f19615ee7eaf22c17436778008ca7a0e4a5c6faf9d1e809891111014503b7655"

  url "https://github.com/drata/agent-releases/releases/download/v#{version}/Drata-Agent-#{version}-universal-mac.zip", verified: "github.com/drata"
  name "drata-agent"
  desc "Drata compliance and security service Agent"
  homepage "https://drata.com/"

  livecheck do
    url :url
  end

  auto_updates true

  app "Drata Agent.app"
end
