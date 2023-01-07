cask "drata-agent" do
  version "3.2.1"
  sha256 "229bdae564112e88dce17a96509936fce52829be204f7db6dc3472489c46d12c"

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
