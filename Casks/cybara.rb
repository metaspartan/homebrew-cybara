cask "cybara" do
  version "1.0.1398"
  on_arm { sha256 "6706eb252bf3ad6570e05574ba3058b41048005d43ad37d2b071d90e297a65f6"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1398/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "8b99bf6d22b1c514286d059a23ed0863b883cc8128b97f98d4546a7bbaaf4ad2"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1398/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
