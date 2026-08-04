cask "cybara" do
  version "1.0.2051"
  on_arm { sha256 "c02a8615932fcedf3cf2710c663817b6b942bb428b936a9c95d75a82abaebea2"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2051/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "3fa809dfceb2a6cead2c11864fbe1ad204689b64dd726631f40ffa9607ab3ab4"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2051/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
