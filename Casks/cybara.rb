cask "cybara" do
  version "1.0.1910"
  on_arm { sha256 "21298c6a039209d92394c665ce70c8ff3e45ec80a767f186f13368008f7556fa"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1910/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "5388b2d19e2d79dd6a26c5c7abcb9f1bf1ce2a2e7c7baa10a0aa07c74785bfda"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1910/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
