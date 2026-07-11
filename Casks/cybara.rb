cask "cybara" do
  version "1.0.1299"
  on_arm { sha256 "8a22e2a85aa7d5b5dd15b048c944839cca9593c6c2c7850646ab19684ec859da"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1299/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "0a741cd660c6f5ef111b2f1b41f0ad90e687d30e274a3104dc39665e5edd3e9d"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1299/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
