cask "cybara" do
  version "1.0.2503"
  on_arm { sha256 "1dc0ff045e806ac4b441bcf3ff35272ad370774ee2c6fac5ba72e38a06ee66f1"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2503/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "8e492f6a2e52245ae8332b246739c652bdc778c514fb832a6fe7b030e0b49419"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2503/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
