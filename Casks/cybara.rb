cask "cybara" do
  version "1.0.1845"
  on_arm { sha256 "9a4aca58c18f369b5e8050bbae6a128d6518507fe09fb31fe9f6b85d4b20a527"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1845/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "8f5c84d623d03fb2d94a35ae2bd4fd1bf20028addbcb46b0d157dae38658f486"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1845/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
