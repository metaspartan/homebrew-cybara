cask "cybara" do
  version "1.0.1772"
  on_arm { sha256 "a804440c2d71f55052ce2eb059cca13b643b9cb846dafe0020fa8829c9e38cfc"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1772/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "a7f316beef869d4e6b60eaf85a265429220345c1c3939628127e6aa654ab1c36"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1772/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
