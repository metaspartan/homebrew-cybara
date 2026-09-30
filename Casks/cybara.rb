cask "cybara" do
  version "1.0.2451"
  on_arm { sha256 "4484dc03dbbf61533aa9d080986467462a844fcc8252c58bad37ca8d53eabbf3"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2451/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "e6caf89a508d718c1cf633d8ab7cc00a52318bc562ba46670388ae4854c9b4bc"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2451/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
