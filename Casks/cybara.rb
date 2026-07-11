cask "cybara" do
  version "1.0.1317"
  on_arm { sha256 "06cf54a31cf4f163e798ff0ba31e169374c7da6935100a6bffe5225fbd3b13ae"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1317/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "7ed3324cf8cf30aad15db22e8252d3db2aba0af6955f7d2742f996b86ee0c727"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1317/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
