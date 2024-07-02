cask "dji-assistant-2-consumer-drones-series" do
  version "2.1.21"
  sha256 "2dc299bd63feb130312fa132548fd7e5fe77ee9cc4a41f2c35cd1d7f0435afdc"

  url "https://dl.djicdn.com/downloads/dji_assistant/20240411/DJI+Assistant+2(Consumer+Drones+Series)+#{version}.pkg"
  name "DJI Assistant 2 (Consumer Drones Series)"
  desc "Support the consumer drones series products, including mavic series."
  homepage "https://www.dji.com/uk/downloads/softwares/dji-assistant-2-consumer-drones-series"

  pkg "DJI+Assistant+2(Consumer+Drones+Series)+#{version}.pkg"

  uninstall pkgutil: "com.dji.pkg.DJIAssistant2ForConsumer", kext: "com.joshuawise.kexts.HoRNDIS"
end
