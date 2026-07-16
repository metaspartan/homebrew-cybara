cask "cybara" do
  version "1.0.1713"
  on_arm { sha256 "e6becded24a1e51931bee3f3051a78b3daa446802eb78e307488365e3b0f2a99"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1713/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "df46670a97507a580e147842f612ad7bd4ac8d7f9b53a367c26dafd89d68aba4"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1713/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
