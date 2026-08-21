cask "cybara" do
  version "1.0.2187"
  on_arm { sha256 "3c1c55c617218f3cc1a62f65a870bea7381ce70eca55aab58175db467b21b079"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2187/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "fe8375da469e5df0e36e77e4fdc099dd7371c30a3160d856071dc37444b47096"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2187/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
