cask "cybara" do
  version "1.0.1576"
  on_arm { sha256 "eae59b18fff3623026276e452f3c9d28ac7899675f99a5e7f84079e2ebf08ec3"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1576/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "a228cc78cacc219f3c99682cc63c95ba1507e14ba7145435e4ec1aac94ded373"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1576/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
