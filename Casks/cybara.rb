cask "cybara" do
  version "1.0.2363"
  on_arm { sha256 "8765670c03cc457c9b6d46769d44d08fc40159b7530e69551cee44315a4c7f8c"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2363/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "8d36b12ec26cc554702254d9ac3f837e978471e818a7cd287022212792f7bbc0"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2363/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
