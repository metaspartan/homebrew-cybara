cask "cybara" do
  version "1.0.1820"
  on_arm { sha256 "262af2ffde65d3590a36b0262114bb5e4a35d7c925d069aef6edd53e11abe264"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1820/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "71224fb680ca7c089f38e07b61e7b8db762d18abcb70c506b62b4cbf516a098d"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1820/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
