cask "cybara" do
  version "1.0.2491"
  on_arm { sha256 "6041187f334a3316cf45e2fbb26c9c5c8d647f318f64f292df6be5ac9c649e74"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2491/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "5c793cbb65a1dcaaee9c78bbd854197b29126ea7047a68ccfdbe80e5fb8b4c45"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2491/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
