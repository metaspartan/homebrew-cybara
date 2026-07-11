cask "cybara" do
  version "1.0.1261"
  on_arm { sha256 "616f1d345b88a238c3a3eff565130b2b2ba4b31bc1efdb12abf80f3947a17e31"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1261/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "61c80b81c43de6c00325dcddfe693d66d68f9f26ddf29d3856f165be47a944c2"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1261/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
