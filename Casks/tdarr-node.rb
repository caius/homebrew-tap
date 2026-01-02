cask "tdarr-node" do
  version "2.58.02"
  sha256 "7e3aafe3ca44124c9014f32d249e0827ae4f24304df867f5a13c07baf8e024f8"

  url "https://storage.tdarr.io/versions/#{version}/darwin_arm64/Tdarr_Node.zip"
  name "TdarrNode"
  desc "Transcoding node binary"
  homepage "https://tdarr.io"

  # Documentation: https://docs.brew.sh/Brew-Livecheck
  livecheck do
    url "https://storage.tdarr.io/versions.json"
    regex(/(\d+\.\d+\.\d+)/)
    strategy :json do |json, regex|
      # FIXME: handle other platforms in arch string
      latest = json.find { |version, archs| archs["darwin_arm64"].include?("Tdarr_Node") }
      latest.first[regex, 1]
    end
  end

  binary "Tdarr_Node"

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  # zap trash: ""
end
