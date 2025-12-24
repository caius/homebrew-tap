cask "dji-assistant-2-consumer-drones-series" do
  name "DJI Assistant 2 (Consumer Drones Series)"
  desc "Support the consumer drones series products, including mavic series."
  homepage "https://www.dji.com/uk/downloads/softwares/dji-assistant-2-consumer-drones-series"

  version "2.1.38"
  url "https://dl.djicdn.com/downloads/dji_assistant/20251028/DJI%20Assistant%202(Consumer%20Drones%20Series)%20#{version}.pkg"
  sha256 "64f62c3b0cf8b4f66ff762fd756d90975d0c8907a6f7cc6390e1f9d9c853873f"

  pkg "DJI Assistant 2(Consumer Drones Series) #{version}.pkg"

  uninstall pkgutil: "com.dji.pkg.DJIAssistant2ForConsumer", kext: "com.joshuawise.kexts.HoRNDIS"
end
