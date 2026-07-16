cask "cybara" do
  version "1.0.1745"
  on_arm { sha256 "e193271a449a2a0288f9a0f190dc0522e8b702c61ac3f6551fd178bd2769927e"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1745/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "7a644a855a278575a11ffda9b296501018225502cc1efeddc87f8cd1452bcb3a"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1745/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
