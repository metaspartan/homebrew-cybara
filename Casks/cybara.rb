cask "cybara" do
  version "1.0.1733"
  on_arm { sha256 "88bd98d002b633bf54ce497eaf7e972b17e53e3fdeba353feb296f3368146172"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1733/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "993d84ed47c5e471489acb5633635660054bf5c5618f589efa017dcbdcc7fe2d"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1733/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
