cask "cybara" do
  version "1.0.2529"
  on_arm { sha256 "ddaeb09b5de60ce767b902c55e94ad931adaad5b8da4dba1838248e33fbf9ac8"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2529/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "7f1f1f516207ee47b04a28a5c3bc5ebb114bcf0ade6c2b4c3dd7e0a9e33309bb"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2529/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
