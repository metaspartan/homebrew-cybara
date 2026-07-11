cask "cybara" do
  version "1.0.1228"
  on_arm { sha256 "a9429b29cbea14813625a3bab512e1e0ba255106ccc765e8731e6714cdbd7846"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1228/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "a9680442c96eb0d34aaf974f1733be3f115d83eeb5be8255e7e0a3fe4a4b46ec"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1228/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
