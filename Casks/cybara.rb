cask "cybara" do
  version "1.0.1461"
  on_arm { sha256 "c0e183dd0a7901e7ad2a3100954aced0ced5b9586d21a268bac34b0c89599730"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1461/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "30a5ca3b403ffb915f56aac351b870ef5894bd59ef721c2848fa062a7d471a48"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1461/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
