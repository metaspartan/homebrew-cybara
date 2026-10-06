cask "cybara" do
  version "1.0.2497"
  on_arm { sha256 "d567ffe81d07bc97d7f4ceb24a2b28f821987e59bd4678f69627ca4ac8c30ce7"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2497/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "ccee0726ab1f0fa7ea73fb4dafb714d1433b0df31f9eb1b22f5b0029e9da673a"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2497/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
