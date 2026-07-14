cask "cybara" do
  version "1.0.1543"
  on_arm { sha256 "a733104ba7e9be60802415acd3ddadcb88b2306afd564fa89afcc4b9454d9eeb"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1543/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "b42b00db8f878c9a81668437f7183bb223488c65c588a3272dc010fd391daeea"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1543/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
