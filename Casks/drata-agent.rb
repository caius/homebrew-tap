cask "drata-agent" do
  version "3.0.3"
  sha256 "91275664c7913cea010addfd2c70336df3af8f081a5c755cda33540d623d7116"

  url "https://github.com/drata/agent-releases/releases/download/v#{version}/Drata-Agent-#{version}-mac.zip", verified: "github.com/drata"
  name "drata-agent"
  desc "Drata Agent for compliance and security"
  homepage "https://drata.com"

  app "Drata Agent.app"
end
