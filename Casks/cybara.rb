cask "cybara" do
  version "1.0.1407"
  on_arm { sha256 "a574c978606cc4f667bc42cd49bfb9ad1d7573f01ea6f354866f439289342887"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1407/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "0d77fbff357dd5a863d20a9ef0c327d5738fab1ee9981087fb79637e617f9fc4"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1407/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
