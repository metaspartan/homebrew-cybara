cask "cybara" do
  version "1.0.1887"
  on_arm { sha256 "fcc8e01e40645bbe16e914399abee755c3b3008c0c8a9019f55130dd44239799"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1887/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "85ca56a547da8918bef38642b593e7ff0d4ada42838ae41367d06ae72cb5edc9"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1887/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
