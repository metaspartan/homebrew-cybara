cask "cybara" do
  version "1.0.2512"
  on_arm { sha256 "c6bdc7239c3005bd7a4114724e7cbc68b9edb172ac1d0962308912e0cbfdd5d7"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2512/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "de97a7c8e9e43ae8b8dff192da7742415ebd83701d3a61343fc4b06a630583e8"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2512/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
