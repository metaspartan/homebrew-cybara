cask "cybara" do
  version "1.0.1249"
  on_arm { sha256 "bcea91ffe673ee42e92dd6760294f0bdd9180376145d7cbb45ae403200a33668"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1249/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "9e1456429e7d2664279e8f93cc01af2c64c166fc70b91cc5198f0a749f074a33"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1249/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
