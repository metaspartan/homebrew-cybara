cask "cybara" do
  version "1.0.1222"
  on_arm { sha256 "f8c7c58d8ff56fccb77032870e36566f9d880c5c7ad44e47bf06ea104ca19328"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1222/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "6fff8971721d7cca25fff591cb2c02ab9479505f5c5d15a4a2764fd174dfc210"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1222/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
