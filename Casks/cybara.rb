cask "cybara" do
  version "1.0.1224"
  on_arm { sha256 "5e40800632ce803d4aaef90bf9e7a80300e56f291cc0af52b813180563e7f97e"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1224/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "77c34c1c15eb373b1d0df8834c5cebecf7328f5cdc53a448dc5ab39c5e7f9276"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1224/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
