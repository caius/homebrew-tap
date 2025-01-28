cask "vanta-agent" do
  version "2.12.0"
  sha256 "4e49a169593c599f2e2fc2e083a4fc67f6278905ff0dfd63acfc709c174d7190"

  url "https://agent-downloads.vanta.com/targets/versions/#{version}/vanta-universal.pkg"
  name "vanta-agent"
  desc "Vanta Agent"
  homepage "https://vanta.com/"

  pkg "vanta-universal.pkg"

  uninstall script: {
    executable: "/usr/local/vanta/vanta-cli",
    args: ["uninstall"],
    sudo: true
  }
end
